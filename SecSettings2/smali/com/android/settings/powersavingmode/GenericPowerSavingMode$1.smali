.class Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode$1;->this$0:Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 77
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode$1;->this$0:Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;

    # invokes: Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;->access$000(Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "low_power"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 78
    .local v0, "mLowPowerMode":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode$1;->this$0:Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;

    # getter for: Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;->access$100(Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode$1;->this$0:Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;

    # getter for: Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;->access$100(Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode$1;->this$0:Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;

    # getter for: Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings_ex/DropDownPreference;
    invoke-static {v1}, Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;->access$200(Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;)Lcom/android/settings_ex/DropDownPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/DropDownPreference;->setEnabled(Z)V

    .line 82
    return-void
.end method
