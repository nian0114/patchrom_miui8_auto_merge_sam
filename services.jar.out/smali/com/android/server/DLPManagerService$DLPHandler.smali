.class Lcom/android/server/DLPManagerService$DLPHandler;
.super Landroid/os/Handler;
.source "DLPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DLPManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DLPHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "EnterpriseRightsManagerServiceHandler"


# instance fields
.field final synthetic this$0:Lcom/android/server/DLPManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/DLPManagerService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/server/DLPManagerService$DLPHandler;->this$0:Lcom/android/server/DLPManagerService;

    .line 99
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 100
    const-string v0, "DLPHandler"

    # invokes: Lcom/android/server/DLPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/android/server/DLPManagerService;->access$000(Ljava/lang/String;)I

    .line 101
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 104
    const-string v11, "DLPHandler"

    # invokes: Lcom/android/server/DLPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v11}, Lcom/android/server/DLPManagerService;->access$000(Ljava/lang/String;)I

    .line 107
    :try_start_0
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 109
    :pswitch_0
    # getter for: Lcom/android/server/DLPManagerService;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/DLPManagerService;->access$100()Landroid/content/Context;

    move-result-object v11

    const-string/jumbo v12, "persona"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PersonaManager;

    .line 111
    .local v7, "mPersonaManager":Landroid/os/PersonaManager;
    if-eqz v7, :cond_0

    .line 115
    invoke-virtual {v7}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v10

    .line 116
    .local v10, "personaIds":[I
    if-eqz v10, :cond_0

    .line 117
    move-object v0, v10

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_0

    aget v9, v0, v4

    .line 118
    .local v9, "personaId":I
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v11

    # getter for: Lcom/android/server/DLPManagerService;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/DLPManagerService;->access$100()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12, v9}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v8

    .line 120
    .local v8, "mcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    if-eqz v8, :cond_1

    .line 121
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getDLPManagerPolicy()Lcom/sec/enterprise/knox/dlp/DLPManagerPolicy;

    move-result-object v2

    .line 122
    .local v2, "dlpService":Lcom/sec/enterprise/knox/dlp/DLPManagerPolicy;
    if-eqz v2, :cond_1

    .line 123
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/dlp/DLPManagerPolicy;->getDLPConfig()Landroid/os/Bundle;

    move-result-object v1

    .line 125
    .local v1, "config":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 126
    const-string v11, "Lock"

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 127
    .local v5, "isLocked":Ljava/lang/Boolean;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 128
    iget-object v11, p0, Lcom/android/server/DLPManagerService$DLPHandler;->this$0:Lcom/android/server/DLPManagerService;

    invoke-virtual {v11, v9}, Lcom/android/server/DLPManagerService;->lockDLP(I)Z

    .line 117
    .end local v1    # "config":Landroid/os/Bundle;
    .end local v2    # "dlpService":Lcom/sec/enterprise/knox/dlp/DLPManagerPolicy;
    .end local v5    # "isLocked":Ljava/lang/Boolean;
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 130
    .restart local v1    # "config":Landroid/os/Bundle;
    .restart local v2    # "dlpService":Lcom/sec/enterprise/knox/dlp/DLPManagerPolicy;
    .restart local v5    # "isLocked":Ljava/lang/Boolean;
    :cond_2
    iget-object v11, p0, Lcom/android/server/DLPManagerService$DLPHandler;->this$0:Lcom/android/server/DLPManagerService;

    invoke-virtual {v11, v9}, Lcom/android/server/DLPManagerService;->unlockDLP(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 139
    .end local v0    # "arr$":[I
    .end local v1    # "config":Landroid/os/Bundle;
    .end local v2    # "dlpService":Lcom/sec/enterprise/knox/dlp/DLPManagerPolicy;
    .end local v4    # "i$":I
    .end local v5    # "isLocked":Ljava/lang/Boolean;
    .end local v6    # "len$":I
    .end local v7    # "mPersonaManager":Landroid/os/PersonaManager;
    .end local v8    # "mcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v9    # "personaId":I
    .end local v10    # "personaIds":[I
    :catch_0
    move-exception v3

    .line 140
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
