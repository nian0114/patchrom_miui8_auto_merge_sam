.class Lcom/android/settings_ex/wifi/WifiConfigController$10;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiConfigController;->showSisNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiConfigController;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiConfigController;)V
    .locals 0

    .prologue
    .line 3736
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$10;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 3739
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController$10;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/wifi/WifiConfigController;->mIntranetOnlyMode:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$1002(Lcom/android/settings_ex/wifi/WifiConfigController;Z)Z

    .line 3740
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController$10;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->mIntranetOnlyCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$1100(Lcom/android/settings_ex/wifi/WifiConfigController;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$10;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->mIntranetOnlyMode:Z
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$1000(Lcom/android/settings_ex/wifi/WifiConfigController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3741
    return-void
.end method
