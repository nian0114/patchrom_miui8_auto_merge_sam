.class Lcom/android/nfc/NfcService$2;
.super Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcService;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverAttachStateChanged(Z)V
    .locals 3
    .param p1, "CoverAttached"    # Z

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mCoverAttached:Z
    invoke-static {v0, p1}, Lcom/android/nfc/NfcService;->access$102(Lcom/android/nfc/NfcService;Z)Z

    .line 1286
    iget-object v0, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCoverAttached:Z
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mScoverState:Lcom/samsung/android/sdk/cover/ScoverState;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$000(Lcom/android/nfc/NfcService;)Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/NfcService;->updateNfcLedCoverAttachState(ZLcom/samsung/android/sdk/cover/ScoverState;)V

    .line 1287
    return-void
.end method

.method public onCoverSwitchStateChanged(Z)V
    .locals 3
    .param p1, "switchState"    # Z

    .prologue
    .line 1290
    if-eqz p1, :cond_0

    # getter for: Lcom/android/nfc/NfcService;->IsLedCoverAttached:Z
    invoke-static {}, Lcom/android/nfc/NfcService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    const-string v1, "/sys/class/power_supply/battery/wc_control"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/NfcService;->fileWriteInt(Ljava/lang/String;I)Z

    .line 1293
    :cond_0
    return-void
.end method
