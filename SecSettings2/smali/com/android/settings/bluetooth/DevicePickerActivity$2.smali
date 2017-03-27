.class Lcom/android/settings_ex/bluetooth/DevicePickerActivity$2;
.super Ljava/lang/Object;
.source "DevicePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->onPostResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$2;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 255
    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$2;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    # getter for: Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->access$100(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$2;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    # getter for: Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->access$200(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$2;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    # getter for: Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mInitiateScan:Z
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->access$300(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$2;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    # getter for: Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->access$200(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$2;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    # getter for: Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mInitiateScan:Z
    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->access$300(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 264
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$2;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mInitiateScan:Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->access$302(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;Z)Z

    .line 265
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "ignored":Ljava/lang/InterruptedException;
    const-string v1, "DevicePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    .end local v0    # "ignored":Ljava/lang/InterruptedException;
    :cond_0
    const-string v1, "DevicePickerActivity"

    const-string v2, "Does not start scanning."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
