.class Lcom/android/settings_ex/bluetooth/DevicePickerActivity$3;
.super Ljava/lang/Object;
.source "DevicePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->showHelpDialog(II)V
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
    .line 299
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$3;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$3;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    # getter for: Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->access$400(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 303
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$3;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->access$402(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;)Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    .line 304
    return-void
.end method
