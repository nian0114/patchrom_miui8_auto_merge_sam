.class Lcom/android/internal/telephony/TelephonyTester$1;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyTester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/TelephonyTester;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/TelephonyTester;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sIntentReceiver.onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    const-string v2, "AP"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_ConfigPcoControlType"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.samsung.intent.action.PCO_TEST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    # getter for: Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    const-string v3, "pco"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setPcoValue(I)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "com.samsung.intent.action.REFRESH_NITZ_TIME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Refresh NITZ time"

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    # getter for: Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->refreshNitzTime(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    const-string v2, "com.samsung.intent.action.SET_PREFERRED_NETWORK_TYPE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "networktype"

    const/16 v3, 0x16

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, "networkType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetPreferredNetworkType - networktype: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    # getter for: Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .end local v1    # "networkType":I
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    # getter for: Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getActionDetached()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "simulate detaching"

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    # getter for: Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    # getter for: Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getActionAttached()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "simulate attaching"

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    # getter for: Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    :cond_4
    const-string v2, "com.android.internal.telephony.TestConferenceEventPackage"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "inject simulated conference event package"

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    const-string v3, "filename"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->handleTestConferenceEventPackage(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v2, p1, v3}, Lcom/android/internal/telephony/TelephonyTester;->access$200(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: unknown action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
