.class Lcom/android/settings_ex/TrustedCredentialsSettings$2;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/TrustedCredentialsSettings;->addTab(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

.field final synthetic val$adapter:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$2;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$2;->val$adapter:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$2;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$2;->val$adapter:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    # invokes: Lcom/android/settings_ex/TrustedCredentialsSettings;->showCertDialog(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$800(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V

    .line 311
    return-void
.end method
