.class Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment$1;
.super Ljava/lang/Object;
.source "StorageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$diskId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment$1;->this$0:Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment;

    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment$1;->val$diskId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 483
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment$1;->val$context:Landroid/content/Context;

    const-class v2, Lcom/android/settings_ex/deviceinfo/StorageWizardInit;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 484
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.os.storage.extra.DISK_ID"

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment$1;->val$diskId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment$1;->this$0:Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment;->startActivity(Landroid/content/Intent;)V

    .line 486
    return-void
.end method
