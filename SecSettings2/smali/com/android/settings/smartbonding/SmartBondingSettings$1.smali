.class Lcom/android/settings_ex/smartbonding/SmartBondingSettings$1;
.super Landroid/database/ContentObserver;
.source "SmartBondingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/smartbonding/SmartBondingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/smartbonding/SmartBondingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/smartbonding/SmartBondingSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings_ex/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings_ex/smartbonding/SmartBondingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings_ex/smartbonding/SmartBondingSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings_ex/smartbonding/SmartBondingSettings;

    # invokes: Lcom/android/settings_ex/smartbonding/SmartBondingSettings;->isMenuDIM()Z
    invoke-static {v0}, Lcom/android/settings_ex/smartbonding/SmartBondingSettings;->access$000(Lcom/android/settings_ex/smartbonding/SmartBondingSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings_ex/smartbonding/SmartBondingSettings;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings_ex/smartbonding/SmartBondingSettings;->updateSmartBondingState(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/smartbonding/SmartBondingSettings;->access$100(Lcom/android/settings_ex/smartbonding/SmartBondingSettings;Z)V

    .line 80
    :cond_0
    return-void
.end method
