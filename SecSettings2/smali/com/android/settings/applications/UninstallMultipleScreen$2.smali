.class Lcom/android/settings_ex/applications/UninstallMultipleScreen$2;
.super Landroid/os/Handler;
.source "UninstallMultipleScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/UninstallMultipleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/UninstallMultipleScreen;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/UninstallMultipleScreen;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/settings_ex/applications/UninstallMultipleScreen$2;->this$0:Lcom/android/settings_ex/applications/UninstallMultipleScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 176
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 190
    :goto_0
    return-void

    .line 178
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/UninstallMultipleScreen$2;->this$0:Lcom/android/settings_ex/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings_ex/applications/UninstallMultipleScreen;->selectedPackages:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings_ex/applications/UninstallMultipleScreen;->access$400(Lcom/android/settings_ex/applications/UninstallMultipleScreen;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/applications/UninstallMultipleScreen$2;->this$0:Lcom/android/settings_ex/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings_ex/applications/UninstallMultipleScreen;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/applications/UninstallMultipleScreen;->access$500(Lcom/android/settings_ex/applications/UninstallMultipleScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/applications/UninstallMultipleScreen$2;->this$0:Lcom/android/settings_ex/applications/UninstallMultipleScreen;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/UninstallMultipleScreen;->finish()V

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/UninstallMultipleScreen$2;->this$0:Lcom/android/settings_ex/applications/UninstallMultipleScreen;

    iget-object v1, p0, Lcom/android/settings_ex/applications/UninstallMultipleScreen$2;->this$0:Lcom/android/settings_ex/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings_ex/applications/UninstallMultipleScreen;->selectedPackages:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings_ex/applications/UninstallMultipleScreen;->access$400(Lcom/android/settings_ex/applications/UninstallMultipleScreen;)Ljava/util/List;

    move-result-object v1

    # invokes: Lcom/android/settings_ex/applications/UninstallMultipleScreen;->UninstallPackages(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/applications/UninstallMultipleScreen;->access$600(Lcom/android/settings_ex/applications/UninstallMultipleScreen;Ljava/util/List;)V

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
