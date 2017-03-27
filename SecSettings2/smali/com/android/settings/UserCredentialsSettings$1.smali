.class Lcom/android/settings_ex/UserCredentialsSettings$1;
.super Ljava/lang/Object;
.source "UserCredentialsSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/UserCredentialsSettings;->addTab(Lcom/android/settings_ex/UserCredentialsSettings$Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/UserCredentialsSettings;

.field final synthetic val$adapter:Lcom/android/settings_ex/UserCredentialsSettings$UserCertificateAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/UserCredentialsSettings;Lcom/android/settings_ex/UserCredentialsSettings$UserCertificateAdapter;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/settings_ex/UserCredentialsSettings$1;->this$0:Lcom/android/settings_ex/UserCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings_ex/UserCredentialsSettings$1;->val$adapter:Lcom/android/settings_ex/UserCredentialsSettings$UserCertificateAdapter;

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
    .line 317
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings_ex/UserCredentialsSettings$1;->this$0:Lcom/android/settings_ex/UserCredentialsSettings;

    iget-object v1, p0, Lcom/android/settings_ex/UserCredentialsSettings$1;->val$adapter:Lcom/android/settings_ex/UserCredentialsSettings$UserCertificateAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings_ex/UserCredentialsSettings$UserCertificateAdapter;->getItem(I)Lcom/android/settings_ex/UserCredentialsSettings$CertHolder;

    move-result-object v1

    # invokes: Lcom/android/settings_ex/UserCredentialsSettings;->showCertDialog(Lcom/android/settings_ex/UserCredentialsSettings$CertHolder;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/UserCredentialsSettings;->access$800(Lcom/android/settings_ex/UserCredentialsSettings;Lcom/android/settings_ex/UserCredentialsSettings$CertHolder;)V

    .line 318
    return-void
.end method
