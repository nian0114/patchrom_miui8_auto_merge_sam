.class Lcom/android/settings_ex/ResetSettings$3;
.super Ljava/lang/Object;
.source "ResetSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ResetSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ResetSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ResetSettings;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/settings_ex/ResetSettings$3;->this$0:Lcom/android/settings_ex/ResetSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/ResetSettings$3;->this$0:Lcom/android/settings_ex/ResetSettings;

    # getter for: Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/ResetSettings;->access$200(Lcom/android/settings_ex/ResetSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings_ex/ResetSettings$3;->this$0:Lcom/android/settings_ex/ResetSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/ResetSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e12d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e161a

    new-instance v2, Lcom/android/settings_ex/ResetSettings$3$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/ResetSettings$3$2;-><init>(Lcom/android/settings_ex/ResetSettings$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01ba

    new-instance v2, Lcom/android/settings_ex/ResetSettings$3$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/ResetSettings$3$1;-><init>(Lcom/android/settings_ex/ResetSettings$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 233
    return-void
.end method
