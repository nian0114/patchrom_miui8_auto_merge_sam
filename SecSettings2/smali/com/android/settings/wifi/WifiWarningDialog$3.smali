.class Lcom/android/settings_ex/wifi/WifiWarningDialog$3;
.super Ljava/lang/Object;
.source "WifiWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiWarningDialog;->showEnableWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiWarningDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiWarningDialog;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiWarningDialog$3;->this$0:Lcom/android/settings_ex/wifi/WifiWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiWarningDialog$3;->this$0:Lcom/android/settings_ex/wifi/WifiWarningDialog;

    # invokes: Lcom/android/settings_ex/wifi/WifiWarningDialog;->wifiWarningDialogPressCancel()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiWarningDialog;->access$100(Lcom/android/settings_ex/wifi/WifiWarningDialog;)V

    .line 136
    return-void
.end method
