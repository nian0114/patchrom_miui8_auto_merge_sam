.class Lcom/android/settings_ex/bluetooth/BluetoothEnabler$1;
.super Landroid/os/Handler;
.source "BluetoothEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 93
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 95
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "is_bluetooth_on"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 96
    .local v0, "isBluetoothOn":Z
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->access$000(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v2

    const-class v3, Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 100
    .end local v0    # "isBluetoothOn":Z
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "is_bluetooth_on"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 102
    .local v1, "isChecked":Z
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->access$100(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
