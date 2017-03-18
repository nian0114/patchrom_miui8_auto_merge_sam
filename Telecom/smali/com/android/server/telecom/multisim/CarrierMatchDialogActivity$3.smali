.class Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity$3;
.super Ljava/lang/Object;
.source "CarrierMatchDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->showCarrierMatchDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;

.field final synthetic val$isSmartCSPEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;Z)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity$3;->this$0:Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;

    iput-boolean p2, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity$3;->val$isSmartCSPEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 95
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 96
    iget-boolean v0, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity$3;->val$isSmartCSPEnabled:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity$3;->this$0:Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;

    invoke-virtual {v0}, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->changeCSP(Landroid/content/Context;Z)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity$3;->this$0:Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;

    iget-object v1, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity$3;->this$0:Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;

    # getter for: Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->access$000(Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity$3;->this$0:Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;

    # getter for: Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mNewSim:I
    invoke-static {v2}, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->access$200(Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->sendCarrierMatchBroadcastToReceiver(Landroid/content/Context;Landroid/content/Intent;I)Z

    .line 100
    return-void
.end method
