.class Lcom/android/settings_ex/smartbonding/SmartBondingEnabler$1;
.super Landroid/database/ContentObserver;
.source "SmartBondingEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/smartbonding/SmartBondingEnabler$1;->this$0:Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;->updateSmartBondingState()V

    .line 58
    return-void
.end method
