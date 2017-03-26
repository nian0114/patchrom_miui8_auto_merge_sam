.class Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter$1;
.super Ljava/lang/Object;
.source "TableFullDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter$1;->this$1:Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;

    iput-object p2, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter$1;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter$1;->this$1:Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;->this$0:Lcom/android/nfc/cardemulation/TableFullDialogActivity;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter$1;->val$pkgName:Ljava/lang/String;

    # invokes: Lcom/android/nfc/cardemulation/TableFullDialogActivity;->removeApp(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/nfc/cardemulation/TableFullDialogActivity;->access$000(Lcom/android/nfc/cardemulation/TableFullDialogActivity;Ljava/lang/String;)V

    .line 236
    return-void
.end method
