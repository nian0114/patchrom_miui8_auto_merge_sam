.class Lcom/android/settings_ex/wifi/WifiSetupActivity$WifiSkipDialog$1;
.super Ljava/lang/Object;
.source "WifiSetupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSetupActivity$WifiSkipDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSetupActivity$WifiSkipDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSetupActivity$WifiSkipDialog;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSetupActivity$WifiSkipDialog$1;->this$0:Lcom/android/settings_ex/wifi/WifiSetupActivity$WifiSkipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 302
    return-void
.end method
