.class Lcom/sec/epdg/EpdgService$9;
.super Lcom/sec/epdg/EpdgBroadcastReceiver;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    .prologue
    .line 1424
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$9;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$9;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v1, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->setIsScreenOn(Z)V
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgService;->access$2000(Lcom/sec/epdg/EpdgService;Z)V

    .line 1428
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/Object;

    .prologue
    .line 1433
    return-void
.end method
