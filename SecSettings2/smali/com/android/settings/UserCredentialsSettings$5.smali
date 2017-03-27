.class Lcom/android/settings_ex/UserCredentialsSettings$5;
.super Ljava/lang/Object;
.source "UserCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/UserCredentialsSettings;->showConfirmDialog(Lcom/android/settings_ex/UserCredentialsSettings$CertHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/UserCredentialsSettings;

.field final synthetic val$certHolder:Lcom/android/settings_ex/UserCredentialsSettings$CertHolder;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/UserCredentialsSettings;Lcom/android/settings_ex/UserCredentialsSettings$CertHolder;)V
    .locals 0

    .prologue
    .line 741
    iput-object p1, p0, Lcom/android/settings_ex/UserCredentialsSettings$5;->this$0:Lcom/android/settings_ex/UserCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings_ex/UserCredentialsSettings$5;->val$certHolder:Lcom/android/settings_ex/UserCredentialsSettings$CertHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 743
    new-instance v0, Lcom/android/settings_ex/UserCredentialsSettings$AliasOperation;

    iget-object v1, p0, Lcom/android/settings_ex/UserCredentialsSettings$5;->this$0:Lcom/android/settings_ex/UserCredentialsSettings;

    iget-object v2, p0, Lcom/android/settings_ex/UserCredentialsSettings$5;->val$certHolder:Lcom/android/settings_ex/UserCredentialsSettings$CertHolder;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/UserCredentialsSettings$AliasOperation;-><init>(Lcom/android/settings_ex/UserCredentialsSettings;Lcom/android/settings_ex/UserCredentialsSettings$CertHolder;Lcom/android/settings_ex/UserCredentialsSettings$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/UserCredentialsSettings$AliasOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 744
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 745
    iget-object v0, p0, Lcom/android/settings_ex/UserCredentialsSettings$5;->this$0:Lcom/android/settings_ex/UserCredentialsSettings;

    # getter for: Lcom/android/settings_ex/UserCredentialsSettings;->mCertDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings_ex/UserCredentialsSettings;->access$3400(Lcom/android/settings_ex/UserCredentialsSettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 746
    return-void
.end method
