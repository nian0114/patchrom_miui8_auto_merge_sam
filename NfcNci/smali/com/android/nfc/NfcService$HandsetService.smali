.class final Lcom/android/nfc/NfcService$HandsetService;
.super Lcom/publicnfc/IAdapter$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HandsetService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 6459
    iput-object p1, p0, Lcom/android/nfc/NfcService$HandsetService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Lcom/publicnfc/IAdapter$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public disable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6482
    const-string v0, "NfcService"

    const-string v1, "call disable()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6483
    iget-object v0, p0, Lcom/android/nfc/NfcService$HandsetService;->this$0:Lcom/android/nfc/NfcService;

    const/16 v1, 0x13a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 6484
    const/4 v0, 0x1

    return v0
.end method

.method public enable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6489
    const-string v0, "NfcService"

    const-string v1, "call enable()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6490
    iget-object v0, p0, Lcom/android/nfc/NfcService$HandsetService;->this$0:Lcom/android/nfc/NfcService;

    const/16 v1, 0x13b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 6491
    const/4 v0, 0x1

    return v0
.end method

.method public getNfcState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6462
    const-string v0, "NfcService"

    const-string v1, "call getNfcState()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6463
    iget-object v0, p0, Lcom/android/nfc/NfcService$HandsetService;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    return v0
.end method

.method public readerDisable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6475
    const-string v0, "NfcService"

    const-string v1, "call readerDisable()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6476
    iget-object v0, p0, Lcom/android/nfc/NfcService$HandsetService;->this$0:Lcom/android/nfc/NfcService;

    const/16 v1, 0x138

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 6477
    const/4 v0, 0x1

    return v0
.end method

.method public readerEnable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6468
    const-string v0, "NfcService"

    const-string v1, "call readerEnable()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6469
    iget-object v0, p0, Lcom/android/nfc/NfcService$HandsetService;->this$0:Lcom/android/nfc/NfcService;

    const/16 v1, 0x139

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 6470
    const/4 v0, 0x1

    return v0
.end method
