.class Lcom/android/settings_ex/fingerprint/FingerprintSettings$ItemLongClickListener;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)V
    .locals 0

    .prologue
    .line 1608
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$ItemLongClickListener;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 1611
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$ItemLongClickListener;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->access$700(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)I

    move-result v0

    if-le p3, v0, :cond_0

    .line 1612
    const-string v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ItemLongClickListener mEnrolledFingerCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$ItemLongClickListener;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I
    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->access$700(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    const/4 v0, 0x0

    .line 1616
    :goto_0
    return v0

    .line 1615
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$ItemLongClickListener;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$ItemLongClickListener;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings;->items:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->access$1400(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v0

    const/4 v2, 0x0

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startSelectListUI(I[Z)V
    invoke-static {v1, v0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->access$900(Lcom/android/settings_ex/fingerprint/FingerprintSettings;I[Z)V

    .line 1616
    const/4 v0, 0x1

    goto :goto_0
.end method
