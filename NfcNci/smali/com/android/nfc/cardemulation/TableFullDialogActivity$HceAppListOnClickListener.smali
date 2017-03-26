.class Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppListOnClickListener;
.super Ljava/lang/Object;
.source "TableFullDialogActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/TableFullDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HceAppListOnClickListener"
.end annotation


# instance fields
.field mHcePkgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/nfc/cardemulation/TableFullDialogActivity;


# direct methods
.method public constructor <init>(Lcom/android/nfc/cardemulation/TableFullDialogActivity;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p2, "hcePkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    iput-object p1, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppListOnClickListener;->this$0:Lcom/android/nfc/cardemulation/TableFullDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p2, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppListOnClickListener;->mHcePkgList:Ljava/util/ArrayList;

    .line 168
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "clickedView"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppListOnClickListener;->this$0:Lcom/android/nfc/cardemulation/TableFullDialogActivity;

    iget-object v0, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppListOnClickListener;->mHcePkgList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/nfc/cardemulation/TableFullDialogActivity;->removeApp(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/nfc/cardemulation/TableFullDialogActivity;->access$000(Lcom/android/nfc/cardemulation/TableFullDialogActivity;Ljava/lang/String;)V

    .line 175
    return-void
.end method
