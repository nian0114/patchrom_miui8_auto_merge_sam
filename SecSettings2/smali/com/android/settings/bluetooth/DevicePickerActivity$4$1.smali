.class Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4$1;
.super Ljava/lang/Object;
.source "DevicePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4$1;->this$1:Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4$1;->this$1:Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    # getter for: Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->access$200(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4$1;->this$1:Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    # getter for: Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->access$200(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4$1;->this$1:Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    # getter for: Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->access$200(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto :goto_0
.end method
