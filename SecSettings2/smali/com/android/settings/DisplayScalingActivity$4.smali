.class Lcom/android/settings_ex/DisplayScalingActivity$4;
.super Ljava/lang/Object;
.source "DisplayScalingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DisplayScalingActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DisplayScalingActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DisplayScalingActivity;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/settings_ex/DisplayScalingActivity$4;->this$0:Lcom/android/settings_ex/DisplayScalingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, "isChanged":Z
    iget-object v3, p0, Lcom/android/settings_ex/DisplayScalingActivity$4;->this$0:Lcom/android/settings_ex/DisplayScalingActivity;

    # getter for: Lcom/android/settings_ex/DisplayScalingActivity;->isCondensed:Z
    invoke-static {v3}, Lcom/android/settings_ex/DisplayScalingActivity;->access$200(Lcom/android/settings_ex/DisplayScalingActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 354
    iget-object v3, p0, Lcom/android/settings_ex/DisplayScalingActivity$4;->this$0:Lcom/android/settings_ex/DisplayScalingActivity;

    # getter for: Lcom/android/settings_ex/DisplayScalingActivity;->mStandardRadio:Landroid/widget/RadioButton;
    invoke-static {v3}, Lcom/android/settings_ex/DisplayScalingActivity;->access$000(Lcom/android/settings_ex/DisplayScalingActivity;)Landroid/widget/RadioButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 359
    :goto_0
    if-eqz v0, :cond_3

    .line 360
    iget-object v1, p0, Lcom/android/settings_ex/DisplayScalingActivity$4;->this$0:Lcom/android/settings_ex/DisplayScalingActivity;

    # invokes: Lcom/android/settings_ex/DisplayScalingActivity;->resetDialog()V
    invoke-static {v1}, Lcom/android/settings_ex/DisplayScalingActivity;->access$600(Lcom/android/settings_ex/DisplayScalingActivity;)V

    .line 363
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 354
    goto :goto_0

    .line 356
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/DisplayScalingActivity$4;->this$0:Lcom/android/settings_ex/DisplayScalingActivity;

    # getter for: Lcom/android/settings_ex/DisplayScalingActivity;->mCondensedRadio:Landroid/widget/RadioButton;
    invoke-static {v3}, Lcom/android/settings_ex/DisplayScalingActivity;->access$100(Lcom/android/settings_ex/DisplayScalingActivity;)Landroid/widget/RadioButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_2
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    .line 362
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/DisplayScalingActivity$4;->this$0:Lcom/android/settings_ex/DisplayScalingActivity;

    invoke-virtual {v1}, Lcom/android/settings_ex/DisplayScalingActivity;->finish()V

    goto :goto_1
.end method
