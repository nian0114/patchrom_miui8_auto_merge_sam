.class Lcom/sec/epdg/handover/EpdgImsListener50$2;
.super Ljava/lang/Object;
.source "EpdgImsListener50.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/epdg/handover/EpdgImsListener50;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
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
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener50$2;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .prologue
    const-string v0, "[EpdgImsListener]"

    const-string v1, "onConnected mImsManager"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50$2;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # getter for: Lcom/sec/epdg/handover/EpdgImsListener50;->mImsManager:Lcom/sec/ims/ImsManager;
    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$400(Lcom/sec/epdg/handover/EpdgImsListener50;)Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener50$2;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    iget-object v1, v1, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsIpmeListener:Lcom/sec/ims/im/IImSessionListener$Stub;

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V

    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    const-string v0, "[EpdgImsListener]"

    const-string v1, "onDisconnected mImsManager"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50$2;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # getter for: Lcom/sec/epdg/handover/EpdgImsListener50;->mImsManager:Lcom/sec/ims/ImsManager;
    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$400(Lcom/sec/epdg/handover/EpdgImsListener50;)Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener50$2;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    iget-object v1, v1, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsIpmeListener:Lcom/sec/ims/im/IImSessionListener$Stub;

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->unregisterImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V

    return-void
.end method
