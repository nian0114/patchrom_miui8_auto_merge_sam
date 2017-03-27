.class Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4$2;
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
    .line 381
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4$2;->this$1:Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4$2;->this$1:Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    iget-boolean v0, v0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4$2;->this$1:Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4$2;->this$1:Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    # getter for: Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->access$600(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4$2;->this$1:Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->finish()V

    .line 388
    return-void
.end method
