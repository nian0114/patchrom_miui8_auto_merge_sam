.class Lcom/android/settings_ex/SettingsActivity$15;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SettingsActivity;->drawDashboardTab()V
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
    .line 2249
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity$15;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity$15;->this$0:Lcom/android/settings_ex/SettingsActivity;

    # getter for: Lcom/android/settings_ex/SettingsActivity;->addLayoutCount:I
    invoke-static {v0}, Lcom/android/settings_ex/SettingsActivity;->access$1500(Lcom/android/settings_ex/SettingsActivity;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2255
    const-string v0, "SettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayoutChange(), centerTabItem : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity$15;->this$0:Lcom/android/settings_ex/SettingsActivity;

    # getter for: Lcom/android/settings_ex/SettingsActivity;->tabIndex:I
    invoke-static {v2}, Lcom/android/settings_ex/SettingsActivity;->access$1100(Lcom/android/settings_ex/SettingsActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity$15;->this$0:Lcom/android/settings_ex/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity$15;->this$0:Lcom/android/settings_ex/SettingsActivity;

    # getter for: Lcom/android/settings_ex/SettingsActivity;->tabIndex:I
    invoke-static {v1}, Lcom/android/settings_ex/SettingsActivity;->access$1100(Lcom/android/settings_ex/SettingsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsActivity;->centerTabItem(I)V

    .line 2257
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity$15;->this$0:Lcom/android/settings_ex/SettingsActivity;

    # operator-- for: Lcom/android/settings_ex/SettingsActivity;->addLayoutCount:I
    invoke-static {v0}, Lcom/android/settings_ex/SettingsActivity;->access$1510(Lcom/android/settings_ex/SettingsActivity;)I

    .line 2259
    :cond_0
    return-void
.end method
