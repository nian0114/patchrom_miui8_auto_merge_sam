.class Lcom/android/settings_ex/smartbonding/SmartBondingEnabler$5;
.super Ljava/lang/Object;
.source "SmartBondingEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 163
    iput-object p1, p0, Lcom/android/settings_ex/smartbonding/SmartBondingEnabler$5;->this$0:Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v2, 0x1

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/smartbonding/SmartBondingEnabler$5;->this$0:Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;

    # getter for: Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;->access$100(Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/smartbonding/SmartBondingEnabler$5;->this$0:Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;

    # getter for: Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;->access$000(Lcom/android/settings_ex/smartbonding/SmartBondingEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_bonding"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 168
    return-void
.end method
