.class Landroid/widget/Toast$1;
.super Ljava/lang/Object;
.source "Toast.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Toast;->setView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Landroid/widget/Toast$1;->this$0:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 330
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 332
    :cond_0
    iget-object v1, p0, Landroid/widget/Toast$1;->this$0:Landroid/widget/Toast;

    iget-object v1, v1, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v1}, Landroid/widget/Toast$TN;->hide()V

    .line 334
    :try_start_0
    sget-boolean v1, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v1, :cond_1

    const-string v1, "Toast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelToast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_1
    # invokes: Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;
    invoke-static {}, Landroid/widget/Toast;->access$000()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Toast$1;->this$0:Landroid/widget/Toast;

    iget-object v2, v2, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Toast$1;->this$0:Landroid/widget/Toast;

    iget-object v3, v3, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-interface {v1, v2, v3}, Landroid/app/INotificationManager;->cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 337
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v1, :cond_2

    const-string v1, "Toast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
