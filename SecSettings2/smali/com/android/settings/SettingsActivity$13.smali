.class Lcom/android/settings_ex/SettingsActivity$13;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SettingsActivity;->centerTabItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SettingsActivity;)V
    .locals 0

    .prologue
    .line 1462
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity$13;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1465
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity$13;->this$0:Lcom/android/settings_ex/SettingsActivity;

    # getter for: Lcom/android/settings_ex/SettingsActivity;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v4}, Lcom/android/settings_ex/SettingsActivity;->access$1000(Lcom/android/settings_ex/SettingsActivity;)Landroid/widget/TabHost;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    .line 1466
    .local v3, "tabWidget":Landroid/widget/TabWidget;
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity$13;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v4}, Lcom/android/settings_ex/SettingsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 1467
    .local v2, "screenWidth":I
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity$13;->this$0:Lcom/android/settings_ex/SettingsActivity;

    # getter for: Lcom/android/settings_ex/SettingsActivity;->tabIndex:I
    invoke-static {v4}, Lcom/android/settings_ex/SettingsActivity;->access$1100(Lcom/android/settings_ex/SettingsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1468
    .local v0, "leftX":I
    const/4 v1, 0x0

    .line 1469
    .local v1, "newX":I
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity$13;->this$0:Lcom/android/settings_ex/SettingsActivity;

    # getter for: Lcom/android/settings_ex/SettingsActivity;->tabIndex:I
    invoke-static {v4}, Lcom/android/settings_ex/SettingsActivity;->access$1100(Lcom/android/settings_ex/SettingsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    div-int/lit8 v5, v2, 0x2

    sub-int v1, v4, v5

    .line 1470
    if-gez v1, :cond_0

    .line 1471
    const/4 v1, 0x0

    .line 1473
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity$13;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v4, v1}, Lcom/android/settings_ex/SettingsActivity;->ScrollHorizontalScrollView(I)V

    .line 1474
    return-void
.end method
