.class Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity$5;
.super Ljava/lang/Object;
.source "CarrierMatchDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    iput-object p1, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity$5;->this$0:Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity$5;->this$0:Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;

    invoke-virtual {v0}, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->finish()V

    return-void
.end method
