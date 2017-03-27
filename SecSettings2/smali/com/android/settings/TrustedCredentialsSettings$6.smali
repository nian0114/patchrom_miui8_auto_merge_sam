.class Lcom/android/settings_ex/TrustedCredentialsSettings$6;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/TrustedCredentialsSettings;->showtConfirmDialog(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

.field final synthetic val$certHolder:Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$6;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$6;->val$certHolder:Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 870
    new-instance v0, Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$6;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$6;->val$certHolder:Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;Lcom/android/settings_ex/TrustedCredentialsSettings$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 871
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 872
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$6;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings;->mCertDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$3700(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 873
    return-void
.end method
