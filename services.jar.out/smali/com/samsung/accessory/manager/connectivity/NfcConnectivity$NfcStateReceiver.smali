.class Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NfcConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NfcStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;


# direct methods
.method private constructor <init>(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;
    .param p2, "x1"    # Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;-><init>(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    # getter for: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;
    invoke-static {v1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$000(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.sec.android.nfc.AUTH_READY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.nfc.AUTH_READY"

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    # getter for: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$200(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    # getter for: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$200(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    const/4 v2, 0x1

    # invokes: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->sendStateChanged(I)V
    invoke-static {v1, v2}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$300(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)V

    goto :goto_0
.end method
