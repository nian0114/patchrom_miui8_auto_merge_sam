.class Lcom/android/settings_ex/TrustedCredentialsSettings$5;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/TrustedCredentialsSettings;->showCertDialog(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V
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
    .line 835
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$5;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$5;->val$certHolder:Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$5;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$5;->val$certHolder:Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    # invokes: Lcom/android/settings_ex/TrustedCredentialsSettings;->showtConfirmDialog(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$3400(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V

    .line 839
    return-void
.end method
