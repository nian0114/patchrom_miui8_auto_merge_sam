.class Lcom/android/settings_ex/smartbonding/SmartBondingSettings$8;
.super Ljava/lang/Object;
.source "SmartBondingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/smartbonding/SmartBondingSettings;->showNotificationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/smartbonding/SmartBondingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/smartbonding/SmartBondingSettings;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/settings_ex/smartbonding/SmartBondingSettings$8;->this$0:Lcom/android/settings_ex/smartbonding/SmartBondingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 283
    iget-object v0, p0, Lcom/android/settings_ex/smartbonding/SmartBondingSettings$8;->this$0:Lcom/android/settings_ex/smartbonding/SmartBondingSettings;

    # getter for: Lcom/android/settings_ex/smartbonding/SmartBondingSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings_ex/smartbonding/SmartBondingSettings;->access$200(Lcom/android/settings_ex/smartbonding/SmartBondingSettings;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 284
    iget-object v0, p0, Lcom/android/settings_ex/smartbonding/SmartBondingSettings$8;->this$0:Lcom/android/settings_ex/smartbonding/SmartBondingSettings;

    # invokes: Lcom/android/settings_ex/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/smartbonding/SmartBondingSettings;->access$600(Lcom/android/settings_ex/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_bonding"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 285
    return-void
.end method
