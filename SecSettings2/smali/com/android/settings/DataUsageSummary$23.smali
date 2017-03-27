.class Lcom/android/settings_ex/DataUsageSummary$23;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 3470
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$23;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3473
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$23;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary$ChartFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 3474
    return-void
.end method
