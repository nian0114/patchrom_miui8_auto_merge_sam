.class Lcom/android/settings_ex/SettingsActivity$4;
.super Landroid/database/ContentObserver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SettingsActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity$4;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity$4;->this$0:Lcom/android/settings_ex/SettingsActivity;

    # getter for: Lcom/android/settings_ex/SettingsActivity;->bEnableTab:Z
    invoke-static {v0}, Lcom/android/settings_ex/SettingsActivity;->access$400(Lcom/android/settings_ex/SettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    const-string v0, "SettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAirplaneObserver bReDrawTabAirplaneMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/settings_ex/SettingsActivity;->bReDrawTabAirplaneMode:Z
    invoke-static {}, Lcom/android/settings_ex/SettingsActivity;->access$500()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const-string v0, "SettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAirplaneObserver mIsShowingDashboard : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity$4;->this$0:Lcom/android/settings_ex/SettingsActivity;

    # getter for: Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z
    invoke-static {v2}, Lcom/android/settings_ex/SettingsActivity;->access$600(Lcom/android/settings_ex/SettingsActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity$4;->this$0:Lcom/android/settings_ex/SettingsActivity;

    # getter for: Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z
    invoke-static {v0}, Lcom/android/settings_ex/SettingsActivity;->access$600(Lcom/android/settings_ex/SettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1033
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity$4;->this$0:Lcom/android/settings_ex/SettingsActivity;

    # invokes: Lcom/android/settings_ex/SettingsActivity;->drawDashboardTab()V
    invoke-static {v0}, Lcom/android/settings_ex/SettingsActivity;->access$700(Lcom/android/settings_ex/SettingsActivity;)V

    .line 1038
    :cond_0
    :goto_0
    return-void

    .line 1035
    :cond_1
    const/4 v0, 0x1

    # setter for: Lcom/android/settings_ex/SettingsActivity;->bReDrawTabAirplaneMode:Z
    invoke-static {v0}, Lcom/android/settings_ex/SettingsActivity;->access$502(Z)Z

    goto :goto_0
.end method
