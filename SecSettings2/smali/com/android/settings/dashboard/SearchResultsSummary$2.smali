.class Lcom/android/settings_ex/dashboard/SearchResultsSummary$2;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/dashboard/SearchResultsSummary;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 293
    return-void
.end method
