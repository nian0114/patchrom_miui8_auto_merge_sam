.class Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$5$1;
.super Ljava/lang/Object;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$5;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$5;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$5;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$5$1;->this$1:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-wide/16 v10, 0x294

    const/16 v12, 0x46

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    .line 284
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$5$1;->this$1:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$5;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->mWifiSettingsView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->access$1000(Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;)Landroid/view/View;

    move-result-object v1

    const-wide/16 v6, 0x1f4

    const/16 v8, 0x21

    invoke-static/range {v1 .. v8}, Lcom/android/settings_ex/wifi/VI/AnimationHelper;->fadeAni(Landroid/view/View;FFJJI)V

    .line 286
    iget-object v0, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$5$1;->this$1:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$5;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->mButtonView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->access$1100(Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;)Landroid/view/View;

    move-result-object v7

    move-wide v8, v4

    invoke-static/range {v7 .. v12}, Lcom/android/settings_ex/wifi/VI/AnimationHelper;->fromBottom(Landroid/view/View;JJI)V

    .line 287
    iget-object v0, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$5$1;->this$1:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$5;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->mButtonView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->access$1100(Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;)Landroid/view/View;

    move-result-object v1

    move-wide v6, v10

    move v8, v12

    invoke-static/range {v1 .. v8}, Lcom/android/settings_ex/wifi/VI/AnimationHelper;->fadeAni(Landroid/view/View;FFJJI)V

    .line 288
    return-void
.end method
