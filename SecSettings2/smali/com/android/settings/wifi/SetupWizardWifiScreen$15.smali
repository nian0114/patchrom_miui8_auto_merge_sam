.class Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$15;
.super Ljava/lang/Object;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$15;->this$0:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 524
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 525
    return-void
.end method
