.class Lcom/android/settings_ex/smartbonding/SmartBondingEnabler$7;
.super Ljava/lang/Object;
.source "SmartBondingEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;->showNotificationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/settings_ex/smartbonding/SmartBondingEnabler$7;->this$0:Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    .line 180
    iget-object v1, p0, Lcom/android/settings_ex/smartbonding/SmartBondingEnabler$7;->this$0:Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;

    # getter for: Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;->access$000(Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_bonding"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 181
    .local v0, "smartBondingState":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/smartbonding/SmartBondingEnabler$7;->this$0:Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;

    # getter for: Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;->access$100(Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 182
    return-void
.end method
