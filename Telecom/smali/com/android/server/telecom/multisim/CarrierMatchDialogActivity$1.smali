.class Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity$1;
.super Ljava/lang/Object;
.source "CarrierMatchDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity$1;->this$0:Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 115
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 116
    iget-object v0, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity$1;->this$0:Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;

    invoke-virtual {v0}, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->finish()V

    .line 117
    return-void
.end method
