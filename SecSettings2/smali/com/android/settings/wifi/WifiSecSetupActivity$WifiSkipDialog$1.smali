.class Lcom/android/settings_ex/wifi/WifiSecSetupActivity$WifiSkipDialog$1;
.super Ljava/lang/Object;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSecSetupActivity$WifiSkipDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSecSetupActivity$WifiSkipDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSecSetupActivity$WifiSkipDialog;)V
    .locals 0

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$WifiSkipDialog$1;->this$0:Lcom/android/settings_ex/wifi/WifiSecSetupActivity$WifiSkipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1214
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$WifiSkipDialog$1;->this$0:Lcom/android/settings_ex/wifi/WifiSecSetupActivity$WifiSkipDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$WifiSkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;

    .line 1215
    .local v0, "activity":Lcom/android/settings_ex/wifi/WifiSecSetupActivity;
    const-string v1, "WifiSecSetupActivity"

    const-string v2, "Skip anyway!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->setResult(I)V

    .line 1217
    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->finish()V

    .line 1218
    return-void
.end method
