.class final Lcom/android/server/telecom/secutils/TelecomUtils$4;
.super Ljava/lang/Object;
.source "TelecomUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3406
    iput-object p1, p0, Lcom/android/server/telecom/secutils/TelecomUtils$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/telecom/secutils/TelecomUtils$4;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3409
    iget-object v0, p0, Lcom/android/server/telecom/secutils/TelecomUtils$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/TelecomUtils$4;->val$msg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    # setter for: Lcom/android/server/telecom/secutils/TelecomUtils;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->access$002(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 3411
    # getter for: Lcom/android/server/telecom/secutils/TelecomUtils;->mToast:Landroid/widget/Toast;
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3412
    # getter for: Lcom/android/server/telecom/secutils/TelecomUtils;->mToast:Landroid/widget/Toast;
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3413
    return-void
.end method
