.class public Lcom/android/server/enterprise/auditlog/IptablesLogging;
.super Ljava/lang/Object;
.source "IptablesLogging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;,
        Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;
    }
.end annotation


# static fields
.field private static final DEL_FORWARD_LOG:Ljava/lang/String; = "/system/bin/iptables -D FORWARD -j LOG --log-uid --log-prefix IPT_MDM_LOG"

.field private static final DEL_INPUT_LOG:Ljava/lang/String; = "/system/bin/iptables -D INPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG"

.field private static final DEL_OUTPUT_LOG:Ljava/lang/String; = "/system/bin/iptables -D OUTPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG"

.field private static final FORWARD_LOG:Ljava/lang/String; = "/system/bin/iptables -I FORWARD -j LOG --log-uid --log-prefix IPT_MDM_LOG"

.field private static final INPUT_LOG:Ljava/lang/String; = "/system/bin/iptables -I INPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG"

.field private static final OUTPUT_LOG:Ljava/lang/String; = "/system/bin/iptables -I OUTPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG"

.field private static final TAG:Ljava/lang/String; = "IptablesLogging"


# instance fields
.field private mIsLogging:Z

.field private mLooperThread:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mIsLogging:Z

    new-instance v0, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;

    invoke-direct {v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mLooperThread:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mLooperThread:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;->start()V

    return-void
.end method


# virtual methods
.method public isNetworkLogOn()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mIsLogging:Z

    return v0
.end method

.method turnNetworkLogOff()V
    .locals 4

    .prologue
    iget-boolean v2, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mIsLogging:Z

    if-eqz v2, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "input"

    const-string v3, "/system/bin/iptables -D INPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "output"

    const-string v3, "/system/bin/iptables -D OUTPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "forward"

    const-string v3, "/system/bin/iptables -D FORWARD -j LOG --log-uid --log-prefix IPT_MDM_LOG"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mLooperThread:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mIsLogging:Z

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method turnNetworkLogOn()V
    .locals 4

    .prologue
    iget-boolean v2, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mIsLogging:Z

    if-nez v2, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "input"

    const-string v3, "/system/bin/iptables -I INPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "output"

    const-string v3, "/system/bin/iptables -I OUTPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "forward"

    const-string v3, "/system/bin/iptables -I FORWARD -j LOG --log-uid --log-prefix IPT_MDM_LOG"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mLooperThread:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mIsLogging:Z

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
