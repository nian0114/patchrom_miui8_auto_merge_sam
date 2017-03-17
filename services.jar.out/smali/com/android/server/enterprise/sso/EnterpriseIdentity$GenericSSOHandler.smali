.class final Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;
.super Landroid/os/Handler;
.source "EnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/EnterpriseIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GenericSSOHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/sso/EnterpriseIdentity;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    if-eqz p1, :cond_0

    iget v8, p1, Landroid/os/Message;->arg1:I

    .local v8, "userId":I
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .end local v8    # "userId":I
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .restart local v8    # "userId":I
    :pswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/enterprise/sso/AuthenticationRequest;

    .local v5, "request":Landroid/app/enterprise/sso/AuthenticationRequest;
    invoke-virtual {v5}, Landroid/app/enterprise/sso/AuthenticationRequest;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v4

    .local v4, "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->bindToEnterpriseIdAuthenticator(ILjava/lang/String;)Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    invoke-static {v9, v8, v4}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$1100(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ILjava/lang/String;)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v1

    .local v1, "authenticator":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    const-string v9, "EnterpriseIdentity"

    const-string v10, "In handleMessage: USERAUTHENTICATION"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    const-string v9, "EnterpriseIdentity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In handleMessage: The authenticator value is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getUnEnrollSetting(I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v5}, Landroid/app/enterprise/sso/AuthenticationRequest;->getRequestConfig()Landroid/os/Bundle;

    move-result-object v9

    invoke-interface {v1, v9}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->pushAuthenticatorConfig(Landroid/os/Bundle;)I

    iget-object v9, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setUnEnrollSetting(ZI)V

    :cond_2
    invoke-interface {v1, v5}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->acquireToken(Landroid/app/enterprise/sso/AuthenticationRequest;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v6

    .local v6, "retFromAuthenticator":Landroid/app/enterprise/sso/TokenInfo;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "authVerificationBundle":Landroid/os/Bundle;
    sget-object v9, Landroid/app/enterprise/sso/GenericSSOConstants;->AUTHENTICATION_STATUS:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .local v7, "status":I
    const-string v9, "EnterpriseIdentity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In handleMessage: verifyExchangeUserCredentials: status "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v9}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v9

    if-nez v9, :cond_3

    const/16 v9, -0x12

    if-ne v7, v9, :cond_3

    const/4 v7, -0x1

    :cond_3
    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_1
    const/4 v3, 0x0

    .local v3, "isSdpMinor":Z
    iget-object v9, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;
    invoke-static {v9, v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$1300(Lcom/android/server/enterprise/sso/EnterpriseIdentity;I)Landroid/content/pm/PersonaInfo;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;
    invoke-static {v9, v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$1300(Lcom/android/server/enterprise/sso/EnterpriseIdentity;I)Landroid/content/pm/PersonaInfo;

    move-result-object v9

    iget-boolean v9, v9, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-eqz v9, :cond_0

    const/4 v3, 0x1

    iget-object v9, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    const/4 v10, 0x1

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setNetworkAuthenticationEnforced(ZI)Z
    invoke-static {v9, v10, v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$1400(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v0    # "authVerificationBundle":Landroid/os/Bundle;
    .end local v3    # "isSdpMinor":Z
    .end local v6    # "retFromAuthenticator":Landroid/app/enterprise/sso/TokenInfo;
    .end local v7    # "status":I
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    const-string v9, "EnterpriseIdentity"

    const-string v10, "In handleMessage: RemoteException"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v6    # "retFromAuthenticator":Landroid/app/enterprise/sso/TokenInfo;
    :cond_4
    :try_start_1
    const-string v9, "EnterpriseIdentity"

    const-string v10, "In handleMessage: verifyExchangeUserCredentials returns null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x12 -> :sswitch_0
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
