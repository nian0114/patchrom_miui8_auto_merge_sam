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
    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sIntentReceiver.onReceive: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 75
    const-string v1, "AP"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConfigPcoControlType"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-string v1, "com.samsung.intent.action.PCO_TEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    # getter for: Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    const-string v2, "pco"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setPcoValue(I)V

    .line 94
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    # getter for: Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getActionDetached()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    const-string v1, "simulate detaching"

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    # getter for: Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    # getter for: Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getActionAttached()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    const-string v1, "simulate attaching"

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    # getter for: Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 88
    :cond_2
    const-string v1, "com.android.internal.telephony.TestConferenceEventPackage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    const-string v1, "inject simulated conference event package"

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    const-string v2, "filename"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->handleTestConferenceEventPackage(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/TelephonyTester;->access$200(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: unknown action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    goto :goto_0
.end method
