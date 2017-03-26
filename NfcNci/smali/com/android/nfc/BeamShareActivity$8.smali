.class Lcom/android/nfc/BeamShareActivity$8;
.super Landroid/content/BroadcastReceiver;
.source "BeamShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/BeamShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/BeamShareActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/BeamShareActivity;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/nfc/BeamShareActivity$8;->this$0:Lcom/android/nfc/BeamShareActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 520
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 522
    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 524
    .local v1, "state":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 525
    const-string v2, "BeamShareActivity"

    const-string v3, " parseShareIntentAndFinish #4 "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v2, p0, Lcom/android/nfc/BeamShareActivity$8;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v3, p0, Lcom/android/nfc/BeamShareActivity$8;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v3, v3, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/android/nfc/BeamShareActivity;->parseShareIntentAndFinish(Landroid/content/Intent;)V

    .line 537
    .end local v1    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    const-string v2, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 530
    const-string v2, "com.felicanetworks.nfc.extra.ADAPTER_RW_P2P_STATE"

    const/16 v3, 0xb

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 532
    .restart local v1    # "state":I
    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 533
    const-string v2, "BeamShareActivity"

    const-string v3, " parseShareIntentAndFinish #5 "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v2, p0, Lcom/android/nfc/BeamShareActivity$8;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v3, p0, Lcom/android/nfc/BeamShareActivity$8;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v3, v3, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/android/nfc/BeamShareActivity;->parseShareIntentAndFinish(Landroid/content/Intent;)V

    goto :goto_0
.end method
