.class Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
.super Landroid/os/Handler;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptivePortalHandler"
.end annotation


# static fields
.field private static final CAPTIVE_PORTAL_AUTH_WALKTIME:I = 0x1d4c0

.field private static final CAPTIVE_PORTAL_CHECK_AUTH_PERIOD:I = 0x2710

.field private static final CAPTIVE_PORTAL_CHECK_AUTO_JOIN_PERIOD:I = 0x1388

.field private static final CAPTIVE_PORTAL_CHECK_PERIOD:I = 0x2710

.field private static final CAPTIVE_PORTAL_URL:Ljava/lang/String; = "http://connectivitycheck.android.com/generate_204"

.field private static final NEXT_CHECK_TIME:I = 0x927c0

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "WifiWatchdogStateMachine.CaptivePortalHandler"


# instance fields
.field bDnsCheckOneMore:Z

.field private mAuthCheckStartTime:J

.field private mCallbackHandler:Landroid/os/Handler;

.field private mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

.field private mFirstPortalDnsRequest:Z

.field private mPreviousPrivateIP:Ljava/net/InetAddress;

.field private mStoppedByScan:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;)V
    .locals 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mStoppedByScan:Z

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mFirstPortalDnsRequest:Z

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    const-string v1, "WifiWatchdogStateMachine.CaptivePortalDnsResolver"

    invoke-direct {v0, p1, p0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    return-void
.end method

.method static synthetic access$18800(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->notifyDisconnect()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    return-object v0
.end method

.method private checkCaptivePortal(Landroid/os/Handler;)V
    .locals 5
    .param p1, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x0

    const-string v1, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[checkCaptivePortal] - callbackHandler="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isCaptivePortalException()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v2, 0xe

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    sput-boolean v4, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    if-eq p1, p0, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "message":Landroid/os/Message;
    const v1, 0x2102a

    iput v1, v0, Landroid/os/Message;->what:I

    iput v4, v0, Landroid/os/Message;->arg1:I

    const-wide/16 v2, 0x32

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    :cond_1
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v2, "Abnormal request for checking captive portal"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    const-string v1, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v2, "already checking the captive portal!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, p0, :cond_0

    const v1, 0x21028

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x2102e

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->connectCaptivePortal()V

    goto :goto_0
.end method

.method private connectCaptivePortal()V
    .locals 8

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v1, "skip connectCaptivePortal - The AP is ignorable and verified as CAPTIVE_PORTAL_CHECK_NONE_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v1, "[connectCaptivePortal]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    :try_start_0
    new-instance v7, Ljava/net/URL;

    const-string v0, "http://connectivitycheck.android.com/generate_204"

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v7, "url":Ljava/net/URL;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mFirstPortalDnsRequest:Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xbb8

    const/4 v3, 0x0

    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v1, "DNS List is empty, ignore dns checking"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v6

    .local v6, "ie":Ljava/io/IOException;
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v1, "couldn\'t resolve a URL : http://connectivitycheck.android.com/generate_204"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    goto :goto_0

    .end local v6    # "ie":Ljava/io/IOException;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_4
    :try_start_1
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v1, "[DNS query requested!]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private getResult()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->isCaptivePortal()Z

    move-result v0

    return v0
.end method

.method private isCaptivePortal()Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .local v5, "urlConnection":Ljava/net/HttpURLConnection;
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v7, "Checking http://connectivitycheck.android.com/generate_204"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v4, Ljava/net/URL;

    const-string v6, "http://connectivitycheck.android.com/generate_204"

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v6, 0x2710

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v6, 0x2710

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .local v2, "responseCode":I
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Captive Portal response : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v3, 0x0

    .local v3, "result":Z
    const/16 v6, 0xcc

    if-ne v2, v6, :cond_4

    const/4 v3, 0x0

    :cond_2
    :goto_0
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .end local v2    # "responseCode":I
    .end local v3    # "result":Z
    .end local v4    # "url":Ljava/net/URL;
    :cond_3
    :goto_1
    return v3

    .restart local v2    # "responseCode":I
    .restart local v3    # "result":Z
    .restart local v4    # "url":Ljava/net/URL;
    :cond_4
    const/16 v6, 0xc8

    if-lt v2, v6, :cond_2

    const/16 v6, 0x18f

    if-gt v2, v6, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    .end local v2    # "responseCode":I
    .end local v3    # "result":Z
    .end local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Probably not a portal: exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v6
.end method

.method private notifyDisconnect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const v0, 0x21028

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->access$15600(Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v16, -0x1

    .local v16, "result":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .local v12, "now":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v3, 0x6

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    const/4 v8, 0x0

    .local v8, "bTimeoutByDns":Z
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore msg id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[RESUME_CAPTIVE_PORTAL_CHECK]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const v2, 0x2102e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mStoppedByScan:Z

    const/4 v8, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->connectCaptivePortal()V

    goto :goto_0

    :sswitch_1
    const v2, 0x21028

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[CAPTIVE_PORTAL_CHECK_STATE]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "Do not check CP during LCD off."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xe

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    :cond_4
    const v2, 0x21028

    const-wide/16 v4, 0x4e20

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V

    goto/16 :goto_0

    :sswitch_2
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[DNS_PING_RESULT_SPECIFIC]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->checkDnsResult(III)I

    move-result v9

    .local v9, "dnsResult":I
    const/4 v2, 0x2

    if-ne v9, v2, :cond_7

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "wait until the responses about remained DNS Request arrive!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x21014

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    const/4 v14, 0x0

    .local v14, "resolvedIP":Ljava/net/InetAddress;
    const/4 v2, 0x4

    if-ne v9, v2, :cond_12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    if-eqz v2, :cond_8

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "Init bDnsCheckOneMore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    if-eqz v2, :cond_10

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v3, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[mPreviousPrivateIP] : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " [msg.obj] : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/net/InetAddress;

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "DNS_CHECK_RESULT_PRIVATE_IP!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    const/16 v16, 0x2

    :cond_b
    :goto_1
    const/4 v2, 0x1

    if-ne v9, v2, :cond_1b

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    if-nez v14, :cond_c

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v14    # "resolvedIP":Ljava/net/InetAddress;
    check-cast v14, Ljava/net/InetAddress;

    .restart local v14    # "resolvedIP":Ljava/net/InetAddress;
    :cond_c
    instance-of v2, v14, Ljava/net/Inet4Address;

    if-eqz v2, :cond_1a

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DNS Response SELECTED:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_d
    if-eqz v14, :cond_0

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "start check captive portal "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    move-result-object v3

    const v4, 0x2102b

    const/4 v5, 0x0

    check-cast v14, Ljava/net/Inet4Address;

    .end local v14    # "resolvedIP":Ljava/net/InetAddress;
    invoke-static {v14}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    if-eqz v2, :cond_19

    const-string v2, "http://www.amazon.com"

    :goto_2
    invoke-static {v3, v4, v5, v6, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto/16 :goto_0

    .restart local v14    # "resolvedIP":Ljava/net/InetAddress;
    :cond_e
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "DNS_CHECK_RESULT_different_PRIVATE_IP!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    goto :goto_1

    :cond_10
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xbb8

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_URL_STRING:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "DNS List is empty, ignore dns checking"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    const/16 v16, 0x2

    goto/16 :goto_1

    :cond_11
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[second DNS query requested!]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_12
    const/4 v2, 0x3

    if-ne v9, v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    if-eqz v2, :cond_13

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "Init bDnsCheckOneMore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    const/16 v16, 0x2

    goto/16 :goto_1

    :cond_14
    if-nez v9, :cond_b

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    const/16 v16, 0x3

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mFirstPortalDnsRequest:Z

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    if-nez v2, :cond_15

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mFirstPortalDnsRequest:Z

    :try_start_1
    new-instance v18, Ljava/net/URL;

    const-string v2, "http://connectivitycheck.android.com/generate_204"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v18, "url":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xbb8

    const/4 v5, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "DNS List is empty, ignore dns checking"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v18    # "url":Ljava/net/URL;
    :catch_1
    move-exception v10

    .local v10, "ie":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "couldn\'t resolve a URL : http://connectivitycheck.android.com/generate_204"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x21014

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    const/4 v8, 0x0

    const/16 v16, 0x2

    .end local v10    # "ie":Ljava/io/IOException;
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    if-eqz v2, :cond_16

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "Init bDnsCheckOneMore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    goto/16 :goto_1

    .restart local v18    # "url":Ljava/net/URL;
    :cond_17
    :try_start_2
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[DNS query requested!]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "Init bDnsCheckOneMore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .end local v14    # "resolvedIP":Ljava/net/InetAddress;
    .end local v18    # "url":Ljava/net/URL;
    :cond_19
    :try_start_3
    const-string v2, "http://connectivitycheck.android.com/generate_204"
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .restart local v14    # "resolvedIP":Ljava/net/InetAddress;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "The resolved IP is not IPv4"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    const/16 v16, 0x3

    .end local v9    # "dnsResult":I
    .end local v14    # "resolvedIP":Ljava/net/InetAddress;
    :cond_1b
    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mStoppedByScan:Z

    if-eqz v2, :cond_1c

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[mStoppedByScan] ignore TIMEOUT_CAPTIVE_PORTAL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x2102d

    if-ne v2, v3, :cond_1f

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[TIMEOUT_CAPTIVE_PORTAL]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6702(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    if-eqz v2, :cond_20

    const/16 v16, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    :cond_1f
    :goto_4
    :sswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mStoppedByScan:Z

    if-eqz v2, :cond_21

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[mStoppedByScan] ignore STATUS_CODE_CAPTIVE_PORTAL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_20
    const/16 v16, 0x3

    goto :goto_4

    :cond_21
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x2102c

    if-ne v2, v3, :cond_27

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[STATUS_CODE_CAPTIVE_PORTAL]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .local v15, "responseCode":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    const/16 v17, 0x1

    .local v17, "sameLocation":Z
    :goto_5
    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-nez v2, :cond_24

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "mWIfiInfo = null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v17    # "sameLocation":Z
    :cond_23
    const/16 v17, 0x0

    goto :goto_5

    .restart local v17    # "sameLocation":Z
    :cond_24
    const/16 v2, 0xcc

    if-eq v15, v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v2

    if-eqz v2, :cond_26

    if-eqz v17, :cond_26

    :cond_25
    const/16 v16, 0x0

    :cond_26
    const/16 v2, 0x197

    if-ne v15, v2, :cond_27

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->m407ResponseReceived:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .end local v15    # "responseCode":I
    .end local v17    # "sameLocation":Z
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/16 v16, 0x0

    :cond_28
    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCaptivePortalCheckMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCouldNotIdentifyCaptivePortalState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDetectedCPBefore = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDetectedCPBefore:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_29

    if-nez v8, :cond_29

    :try_start_5
    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "One more check with http://clients3.google.com/generate_204"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v18, Ljava/net/URL;

    const-string v2, "http://clients3.google.com/generate_204"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .restart local v18    # "url":Ljava/net/URL;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xbb8

    const/4 v5, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "DNS List is empty, ignore dns checking"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .end local v18    # "url":Ljava/net/URL;
    :catch_2
    move-exception v10

    .restart local v10    # "ie":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "couldn\'t resolve a URL : http://connectivitycheck.android.com/generate_204"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .end local v10    # "ie":Ljava/io/IOException;
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    if-ne v2, v0, :cond_40

    packed-switch v16, :pswitch_data_0

    :cond_2a
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    const/16 v11, 0x2710

    .local v11, "period":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_2b

    const/16 v11, 0x1388

    :cond_2b
    const v2, 0x21028

    int-to-long v4, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    .end local v11    # "period":I
    :cond_2c
    :goto_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    goto/16 :goto_0

    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIgnoreCPResult:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "ignore CP result, restart CP check"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIgnoreCPResult:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    const v2, 0x21028

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    const v2, 0x2102e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    const v2, 0x2102e

    const-wide/16 v4, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .restart local v18    # "url":Ljava/net/URL;
    :cond_2e
    :try_start_6
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[2nd DNS query requested!]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .end local v18    # "url":Ljava/net/URL;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_34

    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    if-eqz v2, :cond_2f

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v3, 0xd

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "CAPTIVE_PORTAL_EVENT_AUTHENTICATED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-nez v2, :cond_31

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "mWIfiInfo = null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v2

    if-eqz v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x21019

    const v4, 0x2101c

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    :cond_32
    :goto_8
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->authenticationComplete()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    goto/16 :goto_6

    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x21019

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto :goto_8

    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_2a

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "Now, the current AP has been automatically authenticated!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v3, 0xd

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->authenticationComplete()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    goto/16 :goto_6

    :pswitch_1
    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "CAPTIVE_PORTAL_RESULT_DETECTED enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDetectedCPBefore:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6602(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "mDetectedCPBefore is true."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    if-eqz v2, :cond_36

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "CP is detected at 2nd check. Init bDnsCheckOneMore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_2a

    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v2

    if-nez v2, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v3, 0xd

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    :cond_37
    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    if-eqz v2, :cond_39

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "CAPTIVE_PORTAL_EVENT_DETECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x21019

    const v4, 0x2101a

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto/16 :goto_6

    :cond_39
    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2a

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    sub-long v2, v12, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2a

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "CAPTIVE_PORTAL_EVENT_DETECTED_FOR_A_WHILE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x21019

    const v4, 0x2101b

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto/16 :goto_6

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_3c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v2

    if-nez v2, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-nez v2, :cond_3d

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "mWIfiInfo = null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v2

    if-nez v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v3, 0xd

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    goto/16 :goto_6

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v2

    if-nez v2, :cond_3e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    :cond_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    :cond_3f
    const/4 v8, 0x0

    goto/16 :goto_6

    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    const v3, 0x2102a

    const/4 v4, -0x1

    move/from16 v0, v16

    invoke-static {v2, v3, v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_7

    :sswitch_5
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_41

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[EVENT_NETWORK_PROPERTIES_CHANGED]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    :sswitch_6
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x2103d

    if-ne v2, v3, :cond_42

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_42

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[EVENT_SCAN_STARTED]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    :sswitch_7
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21046

    if-ne v2, v3, :cond_44

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_43

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[EVENT_SCAN_TIMEOUT]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_44

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    :cond_44
    :sswitch_8
    const v2, 0x21046

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x2103e

    if-ne v2, v3, :cond_45

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_45

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[EVENT_SCAN_COMPLETE]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x21014

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_46

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V

    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6702(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->access$15600(Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v2, :cond_4d

    const v2, 0x2102d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    const v2, 0x21028

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    const v2, 0x2102e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x2103e

    if-eq v2, v3, :cond_47

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21046

    if-ne v2, v3, :cond_49

    :cond_47
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_48

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "Scan completed, but there is ongoing captive portal check"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    const v2, 0x2102e

    const-wide/16 v4, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_49
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21043

    if-ne v2, v3, :cond_4b

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "LP updated and resume captive portal check"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIgnoreCPResult:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    const v2, 0x2102e

    const-wide/16 v4, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_4b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mStoppedByScan:Z

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "Scan started, the current captive portal check need to be canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    const v2, 0x2102e

    const-wide/16 v4, 0x1388

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_4d
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x2103e

    if-eq v2, v3, :cond_4e

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21046

    if-ne v2, v3, :cond_50

    :cond_4e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mStoppedByScan:Z

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "Scan completed, check again the captive portal state at once!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    const v2, 0x2102e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_50
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "Scan started or LP updated, but there\'s no ongoing captive portal check."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_3
    move-exception v2

    goto/16 :goto_9

    :catch_4
    move-exception v2

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0x21028 -> :sswitch_1
        0x2102c -> :sswitch_4
        0x2102d -> :sswitch_3
        0x2102e -> :sswitch_0
        0x2103d -> :sswitch_6
        0x2103e -> :sswitch_8
        0x21043 -> :sswitch_5
        0x21046 -> :sswitch_7
        0x50005 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
