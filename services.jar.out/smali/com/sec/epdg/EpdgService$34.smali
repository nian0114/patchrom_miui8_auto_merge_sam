.class Lcom/sec/epdg/EpdgService$34;
.super Ljava/lang/Object;
.source "EpdgService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 5431
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$34;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5434
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$34;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onNetworkStatusChanged()V
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$10900(Lcom/sec/epdg/EpdgService;)V

    .line 5435
    return-void
.end method
