.class Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;

.field final synthetic val$cycleDayPicker:Landroid/widget/NumberPicker;

.field final synthetic val$editor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

.field final synthetic val$target:Lcom/android/settings_ex/DataUsageSummary;

.field final synthetic val$template:Landroid/net/NetworkTemplate;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;)V
    .locals 0

    .prologue
    .line 4937
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;->this$0:Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;

    iput-object p2, p0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;->val$target:Lcom/android/settings_ex/DataUsageSummary;

    iput-object p4, p0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;->val$editor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iput-object p5, p0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 4940
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 4941
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4944
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 4946
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 4947
    .local v0, "cycleDay":I
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    iget-object v1, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 4948
    .local v1, "cycleTimezone":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;->val$target:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4949
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;->val$editor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    .line 4950
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;->val$target:Lcom/android/settings_ex/DataUsageSummary;

    const/4 v4, 0x1

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/DataUsageSummary;->access$400(Lcom/android/settings_ex/DataUsageSummary;Z)V

    .line 4952
    :cond_0
    return-void
.end method
