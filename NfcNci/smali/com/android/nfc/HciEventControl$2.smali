.class Lcom/android/nfc/HciEventControl$2;
.super Landroid/content/BroadcastReceiver;
.source "HciEventControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/HciEventControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/HciEventControl;


# direct methods
.method constructor <init>(Lcom/android/nfc/HciEventControl;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/nfc/HciEventControl$2;->this$0:Lcom/android/nfc/HciEventControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 137
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "action":Ljava/lang/String;
    const-string v4, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 141
    const-string v4, "reason"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 142
    .local v2, "reason":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 143
    sget-boolean v4, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "NfcServiceHciEventControl"

    const-string v5, "emergency mode enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    :cond_2
    const/4 v4, 0x5

    if-ne v2, v4, :cond_0

    .line 145
    sget-boolean v4, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "NfcServiceHciEventControl"

    const-string v5, "emergency mode disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_3
    iget-object v4, p0, Lcom/android/nfc/HciEventControl$2;->this$0:Lcom/android/nfc/HciEventControl;

    # getter for: Lcom/android/nfc/HciEventControl;->mStaticBinding:Z
    invoke-static {v4}, Lcom/android/nfc/HciEventControl;->access$200(Lcom/android/nfc/HciEventControl;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 147
    iget-object v4, p0, Lcom/android/nfc/HciEventControl$2;->this$0:Lcom/android/nfc/HciEventControl;

    # invokes: Lcom/android/nfc/HciEventControl;->bindSmartcardService()V
    invoke-static {v4}, Lcom/android/nfc/HciEventControl;->access$300(Lcom/android/nfc/HciEventControl;)V

    goto :goto_0

    .line 149
    :cond_4
    const-string v4, "true"

    const-string v5, "nfc.smartcard.binded"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    iget-object v4, p0, Lcom/android/nfc/HciEventControl$2;->this$0:Lcom/android/nfc/HciEventControl;

    invoke-virtual {v4}, Lcom/android/nfc/HciEventControl;->checkBind()V

    goto :goto_0

    .line 153
    .end local v2    # "reason":I
    :cond_5
    const-string v4, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    const-string v4, "REASON"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 155
    .local v1, "isSimAdded":Z
    const-string v4, "SIMSLOT"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 156
    .local v3, "simSlot":I
    if-eqz v1, :cond_6

    .line 157
    const-string v4, "NfcServiceHciEventControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM inserted, slot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 159
    :cond_6
    const-string v4, "NfcServiceHciEventControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM removed, slot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v4, p0, Lcom/android/nfc/HciEventControl$2;->this$0:Lcom/android/nfc/HciEventControl;

    # getter for: Lcom/android/nfc/HciEventControl;->mCertCache:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/nfc/HciEventControl;->access$400(Lcom/android/nfc/HciEventControl;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0
.end method
