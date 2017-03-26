.class Lcom/android/nfc/NfcService$NfcServiceHandler$2;
.super Ljava/util/TimerTask;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcService$NfcServiceHandler;->sendGpacRuleBasedBroadcast(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/nfc/NfcService$NfcServiceHandler;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService$NfcServiceHandler;)V
    .locals 0

    .prologue
    .line 5456
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler$2;->this$1:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 5459
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler$2;->this$1:Lcom/android/nfc/NfcService$NfcServiceHandler;

    iget-object v3, v3, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mGpacPermissions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5460
    .local v0, "gpacEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/NfcService$GpacPermissionInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/NfcService$GpacPermissionInfo;

    .line 5461
    .local v1, "gpacInfo":Lcom/android/nfc/NfcService$GpacPermissionInfo;
    iget v3, v1, Lcom/android/nfc/NfcService$GpacPermissionInfo;->updateRule:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 5462
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/nfc/NfcService$GpacPermissionInfo;->forceUpdate:Z

    .line 5466
    .end local v0    # "gpacEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/NfcService$GpacPermissionInfo;>;"
    .end local v1    # "gpacInfo":Lcom/android/nfc/NfcService$GpacPermissionInfo;
    :cond_1
    sget-boolean v3, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "NfcService"

    const-string v4, "5sec is expired"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5467
    :cond_2
    return-void
.end method
