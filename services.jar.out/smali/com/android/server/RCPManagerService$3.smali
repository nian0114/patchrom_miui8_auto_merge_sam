.class Lcom/android/server/RCPManagerService$3;
.super Landroid/content/pm/ISystemPersonaObserver$Stub;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/RCPManagerService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/RCPManagerService$3;->this$0:Lcom/android/server/RCPManagerService;

    invoke-direct {p0}, Landroid/content/pm/ISystemPersonaObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onKnoxContainerLaunch(I)V
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    const-string v1, "onKnoxContainerLaunch"

    # invokes: Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v1}, Lcom/android/server/RCPManagerService;->access$300(Ljava/lang/String;)I

    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKnoxContainerLaunch() called for personaId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/RCPManagerService$3;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;
    invoke-static {v1}, Lcom/android/server/RCPManagerService;->access$700(Lcom/android/server/RCPManagerService;)Lcom/android/server/bridge/operations/SimplePersonaInfos;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->initialize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/server/RCPManagerService$3;->this$0:Lcom/android/server/RCPManagerService;

    const-string v2, "samsung.knox.intent.action.MODE_SWITCH_CHANGED"

    # invokes: Lcom/android/server/RCPManagerService;->startKnoxModeSwitcher(Ljava/lang/String;I)V
    invoke-static {v1, v2, p1}, Lcom/android/server/RCPManagerService;->access$600(Lcom/android/server/RCPManagerService;Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPersonaActive(I)V
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    const-string v1, "onPersonaActive"

    # invokes: Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v1}, Lcom/android/server/RCPManagerService;->access$300(Ljava/lang/String;)I

    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onPersonaActive called for  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, " IUserSwitchObserver : calling scanAndStartRCPProxy onPersonaActive "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/RCPManagerService$3;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;
    invoke-static {v1}, Lcom/android/server/RCPManagerService;->access$700(Lcom/android/server/RCPManagerService;)Lcom/android/server/bridge/operations/SimplePersonaInfos;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->initialize()V

    iget-object v1, p0, Lcom/android/server/RCPManagerService$3;->this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/RCPManagerService;->scanAndStartRCPProxy(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ISystemPersonaObserver : Exception while scanAndStartRCPProxy() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRemovePersona(I)V
    .locals 7
    .param p1, "personaId"    # I

    .prologue
    const/4 v6, 0x0

    const-string v3, "onRemovePersona"

    # invokes: Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v3}, Lcom/android/server/RCPManagerService;->access$300(Ljava/lang/String;)I

    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " onRemovePersona called for  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/android/server/RCPManagerService$3;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;
    invoke-static {v3}, Lcom/android/server/RCPManagerService;->access$700(Lcom/android/server/RCPManagerService;)Lcom/android/server/bridge/operations/SimplePersonaInfos;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->removeItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/android/server/RCPManagerService$3;->this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/RCPManagerService;->deleteAllPersonaData(I)V

    iget-object v3, p0, Lcom/android/server/RCPManagerService$3;->this$0:Lcom/android/server/RCPManagerService;

    iget-object v3, v3, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    .local v2, "personaManager":Landroid/os/PersonaManager;
    invoke-virtual {v2, v6}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v1

    .local v1, "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRemovePersona "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " list "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/RCPManagerService$3;->this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {v3, v6}, Lcom/android/server/RCPManagerService;->deleteAllPersonaData(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/server/RCPManagerService$3;->this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/RCPManagerService;->unregisterObserver(I)V

    const/4 v3, 0x0

    sput-object v3, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isKnoxKioskMode"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .end local v1    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v2    # "personaManager":Landroid/os/PersonaManager;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onResetPersona(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    const-string v0, "onResetPersona"

    # invokes: Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->access$300(Ljava/lang/String;)I

    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onResetPersona called for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/RCPManagerService$3;->this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/RCPManagerService;->deleteAllPersonaData(I)V

    return-void
.end method

.method public onStateChange(ILandroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "oldState"    # Landroid/content/pm/PersonaState;
    .param p3, "newState"    # Landroid/content/pm/PersonaState;

    .prologue
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----- onStateChange called for personaId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "personastate newState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/pm/PersonaState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "personastate oldState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/pm/PersonaState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/content/pm/PersonaState;->ADMIN_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {p3, v2}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/content/pm/PersonaState;->ADMIN_LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {p3, v2}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/content/pm/PersonaState;->LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {p3, v2}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/server/RCPManagerService$3;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeSyncUserMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/RCPManagerService;->access$800(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ISyncCallBack;

    .local v0, "callback":Landroid/content/ISyncCallBack;
    if-eqz v0, :cond_1

    :try_start_0
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callig Owner Delete Persona Data of Persona :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, p1}, Landroid/content/ISyncCallBack;->deletePersonaData(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/RCPManagerService$3;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/RCPManagerService;->access$900(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/RCPManagerService$3;->this$0:Lcom/android/server/RCPManagerService;

    # invokes: Lcom/android/server/RCPManagerService;->unregisterBridgeProxy(I)V
    invoke-static {v2, p1}, Lcom/android/server/RCPManagerService;->access$1000(Lcom/android/server/RCPManagerService;I)V

    iget-object v2, p0, Lcom/android/server/RCPManagerService$3;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/RCPManagerService;->access$900(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "callback":Landroid/content/ISyncCallBack;
    :cond_2
    sget-object v2, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {p2, v2}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {p3, v2}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/RCPManagerService$3;->this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/RCPManagerService;->scanAndStartRCPProxy(I)V

    :cond_3
    return-void

    .restart local v0    # "callback":Landroid/content/ISyncCallBack;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception thrown by service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
