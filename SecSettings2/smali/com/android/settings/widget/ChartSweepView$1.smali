.class Lcom/android/settings_ex/widget/ChartSweepView$1;
.super Ljava/lang/Object;
.source "ChartSweepView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/widget/ChartSweepView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/widget/ChartSweepView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/widget/ChartSweepView;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/settings_ex/widget/ChartSweepView$1;->this$0:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView$1;->this$0:Lcom/android/settings_ex/widget/ChartSweepView;

    # invokes: Lcom/android/settings_ex/widget/ChartSweepView;->dispatchRequestEdit()V
    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartSweepView;->access$000(Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 167
    return-void
.end method
