.class Lcom/android/nfc/cardemulation/TableFullDialogActivity$1;
.super Ljava/lang/Object;
.source "TableFullDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/cardemulation/TableFullDialogActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/TableFullDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/TableFullDialogActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$1;->this$0:Lcom/android/nfc/cardemulation/TableFullDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$1;->this$0:Lcom/android/nfc/cardemulation/TableFullDialogActivity;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/TableFullDialogActivity;->finish()V

    .line 88
    return-void
.end method
