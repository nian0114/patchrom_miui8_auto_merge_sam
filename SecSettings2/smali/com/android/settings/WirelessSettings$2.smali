.class Lcom/android/settings_ex/WirelessSettings$2;
.super Landroid/database/ContentObserver;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/WirelessSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/settings_ex/WirelessSettings$2;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings$2;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # getter for: Lcom/android/settings_ex/WirelessSettings;->mSmartBonding:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/settings_ex/WirelessSettings;->access$000(Lcom/android/settings_ex/WirelessSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings$2;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # getter for: Lcom/android/settings_ex/WirelessSettings;->mSmartBonding:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/settings_ex/WirelessSettings;->access$000(Lcom/android/settings_ex/WirelessSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings$2;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "smart_bonding"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0e0ea6

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 168
    const-string v0, "WirelessSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSmartBondingObserver onChange() - mSmartBondingObserver :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings$2;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_bonding"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    return-void

    .line 166
    :cond_1
    const v0, 0x7f0e0ea7

    goto :goto_0
.end method
