.class Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;
.super Ljava/lang/Object;
.source "DevicePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->initialize()V
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
    .line 359
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 362
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    # getter for: Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->access$600(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    # setter for: Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;
    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->access$502(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;Landroid/widget/Button;)Landroid/widget/Button;

    .line 363
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    # getter for: Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->access$600(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    # setter for: Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mCancelBtn:Landroid/widget/Button;
    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->access$702(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;Landroid/widget/Button;)Landroid/widget/Button;

    .line 364
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    # getter for: Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->access$600(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 365
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    # getter for: Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->access$200(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->ScanBtnStateUpdate(Z)V

    .line 370
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    # getter for: Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->access$500(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4$1;-><init>(Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    # getter for: Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mCancelBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->access$700(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4$2;-><init>(Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->ScanBtnStateUpdate(Z)V

    goto :goto_0
.end method
