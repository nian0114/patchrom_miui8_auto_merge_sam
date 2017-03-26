.class Lcom/android/nfc/NfcService$1;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
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
    .line 1262
    iput-object p1, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/sdk/cover/ScoverState;

    .prologue
    const/4 v3, 0x1

    .line 1264
    iget-object v1, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mScoverState:Lcom/samsung/android/sdk/cover/ScoverState;
    invoke-static {v1, p1}, Lcom/android/nfc/NfcService;->access$002(Lcom/android/nfc/NfcService;Lcom/samsung/android/sdk/cover/ScoverState;)Lcom/samsung/android/sdk/cover/ScoverState;

    .line 1265
    iget-object v1, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mScoverState:Lcom/samsung/android/sdk/cover/ScoverState;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$000(Lcom/android/nfc/NfcService;)Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1266
    const-string v1, "NfcService"

    const-string v2, "Hello Cover  : onCoverStateChanged - State Open"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.cover.NFC.OPEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1268
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "coverOpen"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1269
    const-string v1, "com.android.nfc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1270
    iget-object v1, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1278
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCoverAttached:Z
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mScoverState:Lcom/samsung/android/sdk/cover/ScoverState;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$000(Lcom/android/nfc/NfcService;)Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/nfc/NfcService;->updateNfcLedCoverAttachState(ZLcom/samsung/android/sdk/cover/ScoverState;)V

    .line 1279
    return-void

    .line 1272
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v1, "NfcService"

    const-string v2, "Hello Cover  : onCoverStateChanged - State Close"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.cover.NFC.OPEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1274
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "coverOpen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1275
    const-string v1, "com.android.nfc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1276
    iget-object v1, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
