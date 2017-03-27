.class Lcom/android/settings_ex/DisplayScalingActivity$1;
.super Ljava/lang/Object;
.source "DisplayScalingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DisplayScalingActivity;
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
    .line 165
    iput-object p1, p0, Lcom/android/settings_ex/DisplayScalingActivity$1;->this$0:Lcom/android/settings_ex/DisplayScalingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 167
    const-string v0, "DisplayScalingActivity"

    const-string v1, "mStandardClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/DisplayScalingActivity$1;->this$0:Lcom/android/settings_ex/DisplayScalingActivity;

    # getter for: Lcom/android/settings_ex/DisplayScalingActivity;->mStandardRadio:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/settings_ex/DisplayScalingActivity;->access$000(Lcom/android/settings_ex/DisplayScalingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/DisplayScalingActivity$1;->this$0:Lcom/android/settings_ex/DisplayScalingActivity;

    # getter for: Lcom/android/settings_ex/DisplayScalingActivity;->mCondensedRadio:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/settings_ex/DisplayScalingActivity;->access$100(Lcom/android/settings_ex/DisplayScalingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/DisplayScalingActivity$1;->this$0:Lcom/android/settings_ex/DisplayScalingActivity;

    # getter for: Lcom/android/settings_ex/DisplayScalingActivity;->isCondensed:Z
    invoke-static {v0}, Lcom/android/settings_ex/DisplayScalingActivity;->access$200(Lcom/android/settings_ex/DisplayScalingActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/DisplayScalingActivity$1;->this$0:Lcom/android/settings_ex/DisplayScalingActivity;

    # getter for: Lcom/android/settings_ex/DisplayScalingActivity;->mStandardList:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings_ex/DisplayScalingActivity;->access$300(Lcom/android/settings_ex/DisplayScalingActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/DisplayScalingActivity$1;->this$0:Lcom/android/settings_ex/DisplayScalingActivity;

    # getter for: Lcom/android/settings_ex/DisplayScalingActivity;->mCondensedList:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings_ex/DisplayScalingActivity;->access$400(Lcom/android/settings_ex/DisplayScalingActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/DisplayScalingActivity$1;->this$0:Lcom/android/settings_ex/DisplayScalingActivity;

    # getter for: Lcom/android/settings_ex/DisplayScalingActivity;->mCondensedStandardList:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings_ex/DisplayScalingActivity;->access$500(Lcom/android/settings_ex/DisplayScalingActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DisplayScalingActivity$1;->this$0:Lcom/android/settings_ex/DisplayScalingActivity;

    # getter for: Lcom/android/settings_ex/DisplayScalingActivity;->mStandardList:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings_ex/DisplayScalingActivity;->access$300(Lcom/android/settings_ex/DisplayScalingActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/DisplayScalingActivity$1;->this$0:Lcom/android/settings_ex/DisplayScalingActivity;

    # getter for: Lcom/android/settings_ex/DisplayScalingActivity;->mCondensedList:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings_ex/DisplayScalingActivity;->access$400(Lcom/android/settings_ex/DisplayScalingActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/DisplayScalingActivity$1;->this$0:Lcom/android/settings_ex/DisplayScalingActivity;

    # getter for: Lcom/android/settings_ex/DisplayScalingActivity;->mCondensedStandardList:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings_ex/DisplayScalingActivity;->access$500(Lcom/android/settings_ex/DisplayScalingActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
