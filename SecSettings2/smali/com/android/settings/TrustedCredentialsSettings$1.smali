.class Lcom/android/settings_ex/TrustedCredentialsSettings$1;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


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

.field final synthetic val$adapter:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$1;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$1;->val$adapter:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$1;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$1;->val$adapter:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;

    invoke-virtual {v1, p3, p4}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getChild(II)Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    # invokes: Lcom/android/settings_ex/TrustedCredentialsSettings;->showCertDialog(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$800(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V

    .line 299
    const/4 v0, 0x1

    return v0
.end method
