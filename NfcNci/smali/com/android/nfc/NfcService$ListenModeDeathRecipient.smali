.class final Lcom/android/nfc/NfcService$ListenModeDeathRecipient;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ListenModeDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 3550
    iput-object p1, p0, Lcom/android/nfc/NfcService$ListenModeDeathRecipient;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 3553
    iget-object v1, p0, Lcom/android/nfc/NfcService$ListenModeDeathRecipient;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 3554
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    const-string v2, "applyRouting #14"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$ListenModeDeathRecipient;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    const/16 v2, 0xff

    invoke-interface {v0, v2}, Lcom/android/nfc/DeviceHost;->doSetListenTechMask(I)V

    .line 3556
    iget-object v0, p0, Lcom/android/nfc/NfcService$ListenModeDeathRecipient;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 3557
    monitor-exit v1

    .line 3558
    return-void

    .line 3557
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
