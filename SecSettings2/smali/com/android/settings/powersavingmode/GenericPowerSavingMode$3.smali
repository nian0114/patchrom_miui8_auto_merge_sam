.class Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode$3;
.super Ljava/lang/Object;
.source "GenericPowerSavingMode.java"

# interfaces
.implements Lcom/android/settings_ex/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;->initEntry()V
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
    .line 179
    iput-object p1, p0, Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode$3;->this$0:Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 6
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 182
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 183
    .local v1, "val":I
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode$3;->this$0:Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;

    # invokes: Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;->access$400(Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "low_power_trigger_level"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 185
    .local v0, "priv":I
    if-eq v0, v1, :cond_0

    .line 186
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode$3;->this$0:Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;

    invoke-virtual {v2}, Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.settings"

    const-string v4, "PSMA"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings_ex/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .end local v0    # "priv":I
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode$3;->this$0:Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;

    # invokes: Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;->access$500(Lcom/android/settings_ex/powersavingmode/GenericPowerSavingMode;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "low_power_trigger_level"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 190
    const/4 v2, 0x1

    return v2
.end method
