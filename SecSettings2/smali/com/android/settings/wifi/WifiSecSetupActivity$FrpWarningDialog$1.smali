.class Lcom/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog$1;
.super Ljava/lang/Object;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;)V
    .locals 0

    .prologue
    .line 1355
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog$1;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1358
    return-void
.end method
