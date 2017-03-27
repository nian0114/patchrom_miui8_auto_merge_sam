.class Lcom/android/settings_ex/GigaMultiPath$9;
.super Ljava/lang/Object;
.source "GigaMultiPath.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/GigaMultiPath;->showProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/GigaMultiPath;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/GigaMultiPath;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/settings_ex/GigaMultiPath$9;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$9;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    # getter for: Lcom/android/settings_ex/GigaMultiPath;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/GigaMultiPath;->access$1000(Lcom/android/settings_ex/GigaMultiPath;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$9;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    # getter for: Lcom/android/settings_ex/GigaMultiPath;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/GigaMultiPath;->access$1000(Lcom/android/settings_ex/GigaMultiPath;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$9;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    # getter for: Lcom/android/settings_ex/GigaMultiPath;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings_ex/GigaMultiPath;->access$300(Lcom/android/settings_ex/GigaMultiPath;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 350
    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$9;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    # getter for: Lcom/android/settings_ex/GigaMultiPath;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings_ex/GigaMultiPath;->access$300(Lcom/android/settings_ex/GigaMultiPath;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 351
    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$9;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    # getter for: Lcom/android/settings_ex/GigaMultiPath;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/GigaMultiPath;->access$1000(Lcom/android/settings_ex/GigaMultiPath;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 353
    :cond_0
    return-void
.end method
