.class Lcom/sec/epdg/handover/EpdgImsListener50$1;
.super Lcom/sec/ims/im/IImSessionListener$Stub;
.source "EpdgImsListener50.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener50;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener50;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener50;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener50$1;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    invoke-direct {p0}, Lcom/sec/ims/im/IImSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onImSessionEstablished(Z)V
    .locals 4
    .param p1, "isExist"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, "message":Landroid/os/Message;
    const-string v1, "[EpdgImsListener]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImSessionEstablished() : isExist == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener50$1;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setIpmeStatus(Z)V
    invoke-static {v1, p1}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$200(Lcom/sec/epdg/handover/EpdgImsListener50;Z)V

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener50$1;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->informIpmeStatusChangeToHandoverModule(Z)V
    invoke-static {v1, p1}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$300(Lcom/sec/epdg/handover/EpdgImsListener50;Z)V

    return-void
.end method
