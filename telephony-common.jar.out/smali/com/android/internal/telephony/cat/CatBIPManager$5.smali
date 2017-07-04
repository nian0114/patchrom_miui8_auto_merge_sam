.class Lcom/android/internal/telephony/cat/CatBIPManager$5;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "CatBIPManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cat/CatBIPManager;->beginBipConnection(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatBIPManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .locals 0

    .prologue
    .line 1364
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$5;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 1367
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 1368
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    sput-object v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mAPNState:Landroid/net/NetworkInfo$State;

    .line 1369
    const-string v0, "onAvailable "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1370
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$5;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    # getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$900(Lcom/android/internal/telephony/cat/CatBIPManager;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 1371
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 1390
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 1391
    const-string v0, "onCapabilitiesChanged "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1392
    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "maxMsToLive"    # I

    .prologue
    .line 1375
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLosing(Landroid/net/Network;I)V

    .line 1376
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    sput-object v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mAPNState:Landroid/net/NetworkInfo$State;

    .line 1377
    const-string v0, "onLosing "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1378
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 1382
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 1383
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    sput-object v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mAPNState:Landroid/net/NetworkInfo$State;

    .line 1384
    const-string v0, "onLost "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1385
    return-void
.end method
