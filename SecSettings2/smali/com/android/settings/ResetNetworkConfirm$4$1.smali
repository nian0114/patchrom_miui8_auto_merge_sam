.class Lcom/android/settings_ex/ResetNetworkConfirm$4$1;
.super Ljava/lang/Object;
.source "ResetNetworkConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ResetNetworkConfirm$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/ResetNetworkConfirm$4;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ResetNetworkConfirm$4;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$4$1;->this$1:Lcom/android/settings_ex/ResetNetworkConfirm$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm$4$1;->this$1:Lcom/android/settings_ex/ResetNetworkConfirm$4;

    iget-object v0, v0, Lcom/android/settings_ex/ResetNetworkConfirm$4;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$1000(Lcom/android/settings_ex/ResetNetworkConfirm;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e073a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 310
    return-void
.end method
