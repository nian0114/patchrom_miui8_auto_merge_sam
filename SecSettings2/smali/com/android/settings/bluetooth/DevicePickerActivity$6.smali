.class Lcom/android/settings_ex/bluetooth/DevicePickerActivity$6;
.super Ljava/lang/Object;
.source "DevicePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->onBluetoothStateChanged(I)V
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
    .line 448
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$6;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 451
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$6;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    # getter for: Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->access$200(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$6;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    # getter for: Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->access$200(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 458
    :cond_0
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 453
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
.end method
