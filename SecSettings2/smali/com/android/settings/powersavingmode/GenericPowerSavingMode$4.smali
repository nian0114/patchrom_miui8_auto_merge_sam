.class Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode$4;
.super Landroid/content/BroadcastReceiver;
.source "GenericPowerSavingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode$4;->this$0:Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 264
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    const-string v2, "status"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 268
    .local v1, "status":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 269
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode$4;->this$0:Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;

    # setter for: Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;->mIsCharger:Z
    invoke-static {v2, v3}, Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;->access$602(Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;Z)Z

    .line 274
    .end local v1    # "status":I
    :cond_0
    :goto_0
    return-void

    .line 271
    .restart local v1    # "status":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode$4;->this$0:Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;

    const/4 v3, 0x0

    # setter for: Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;->mIsCharger:Z
    invoke-static {v2, v3}, Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;->access$602(Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;Z)Z

    goto :goto_0
.end method
