.class Lcom/android/settings_ex/CryptDecryptSettings$2;
.super Ljava/lang/Object;
.source "CryptDecryptSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CryptDecryptSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CryptDecryptSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/CryptDecryptSettings;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings_ex/CryptDecryptSettings$2;->this$0:Lcom/android/settings_ex/CryptDecryptSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/CryptDecryptSettings$2;->this$0:Lcom/android/settings_ex/CryptDecryptSettings;

    const/16 v1, 0x37

    # invokes: Lcom/android/settings_ex/CryptDecryptSettings;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/CryptDecryptSettings;->access$600(Lcom/android/settings_ex/CryptDecryptSettings;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/CryptDecryptSettings$2;->this$0:Lcom/android/settings_ex/CryptDecryptSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0241

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0242

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 148
    :cond_0
    return-void
.end method
