.class Lcom/android/settings_ex/wifi/WifiSettings$15;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSettings;->showQrConfirmDialg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 1836
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$15;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$15;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->onQrConfirmDialogClick(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2000(Lcom/android/settings_ex/wifi/WifiSettings;Z)V

    .line 1840
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1841
    return-void
.end method
