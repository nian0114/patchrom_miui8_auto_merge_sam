.class Lcom/android/settings_ex/HomeSettings$1;
.super Ljava/lang/Object;
.source "HomeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/HomeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/HomeSettings;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings_ex/HomeSettings$1;->this$0:Lcom/android/settings_ex/HomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 116
    .local v0, "index":I
    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings$1;->this$0:Lcom/android/settings_ex/HomeSettings;

    # getter for: Lcom/android/settings_ex/HomeSettings;->mPrefs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings_ex/HomeSettings;->access$200(Lcom/android/settings_ex/HomeSettings;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    .line 117
    .local v1, "pref":Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    iget-boolean v2, v1, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->isChecked:Z

    if-nez v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings$1;->this$0:Lcom/android/settings_ex/HomeSettings;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/HomeSettings;->makeCurrentHome(Lcom/android/settings_ex/HomeSettings$HomeAppPreference;)V

    .line 119
    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings$1;->this$0:Lcom/android/settings_ex/HomeSettings;

    iget-object v2, v2, Lcom/android/settings_ex/HomeSettings;->mHomeChangeToast:Landroid/widget/Toast;

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings$1;->this$0:Lcom/android/settings_ex/HomeSettings;

    iget-object v2, v2, Lcom/android/settings_ex/HomeSettings;->mHomeChangeToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings$1;->this$0:Lcom/android/settings_ex/HomeSettings;

    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings$1;->this$0:Lcom/android/settings_ex/HomeSettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e13b4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings_ex/HomeSettings;->mHomeChangeToast:Landroid/widget/Toast;

    .line 123
    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings$1;->this$0:Lcom/android/settings_ex/HomeSettings;

    iget-object v2, v2, Lcom/android/settings_ex/HomeSettings;->mHomeChangeToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 125
    :cond_1
    return-void
.end method
