.class Lcom/android/server/SecSCService$3;
.super Landroid/content/BroadcastReceiver;
.source "SecSCService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecSCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecSCService;


# direct methods
.method constructor <init>(Lcom/android/server/SecSCService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/SecSCService$3;->this$0:Lcom/android/server/SecSCService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    # invokes: Lcom/android/server/SecSCService;->SecSC_deleteFile()V
    invoke-static {}, Lcom/android/server/SecSCService;->access$400()V

    iget-object v2, p0, Lcom/android/server/SecSCService$3;->this$0:Lcom/android/server/SecSCService;

    # getter for: Lcom/android/server/SecSCService;->mServiceHandler:Lcom/android/server/SecSCService$ServiceHandler;
    invoke-static {v2}, Lcom/android/server/SecSCService;->access$500(Lcom/android/server/SecSCService;)Lcom/android/server/SecSCService$ServiceHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SecSCService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    :goto_1
    iget-object v2, p0, Lcom/android/server/SecSCService$3;->this$0:Lcom/android/server/SecSCService;

    # getter for: Lcom/android/server/SecSCService;->mServiceHandler:Lcom/android/server/SecSCService$ServiceHandler;
    invoke-static {v2}, Lcom/android/server/SecSCService;->access$500(Lcom/android/server/SecSCService;)Lcom/android/server/SecSCService$ServiceHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/SecSCService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1
.end method
