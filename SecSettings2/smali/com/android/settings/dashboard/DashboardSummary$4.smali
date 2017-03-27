.class Lcom/android/settings_ex/dashboard/DashboardSummary$4;
.super Ljava/lang/Object;
.source "DashboardSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/dashboard/DashboardSummary;->rebuildFavoriteContainer(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/dashboard/DashboardSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dashboard/DashboardSummary;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary$4;->this$0:Lcom/android/settings_ex/dashboard/DashboardSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary$4;->this$0:Lcom/android/settings_ex/dashboard/DashboardSummary;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->switchToEditFavoriteFragment()V

    .line 315
    return-void
.end method
