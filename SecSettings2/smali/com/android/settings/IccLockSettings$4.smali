.class Lcom/android/settings_ex/IccLockSettings$4;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/IccLockSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/IccLockSettings;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/settings_ex/IccLockSettings$4;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 537
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$4;->this$0:Lcom/android/settings_ex/IccLockSettings;

    # getter for: Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$500(Lcom/android/settings_ex/IccLockSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccUsimPersoEnabled()Z

    move-result v0

    .line 538
    .local v0, "IccPersoState":Z
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$4;->this$0:Lcom/android/settings_ex/IccLockSettings;

    # getter for: Lcom/android/settings_ex/IccLockSettings;->mPersoToggle:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$1400(Lcom/android/settings_ex/IccLockSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 539
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$4;->this$0:Lcom/android/settings_ex/IccLockSettings;

    # getter for: Lcom/android/settings_ex/IccLockSettings;->mPersoDialog:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$1500(Lcom/android/settings_ex/IccLockSettings;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$4;->this$0:Lcom/android/settings_ex/IccLockSettings;

    # getter for: Lcom/android/settings_ex/IccLockSettings;->mPersoToggle:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$1400(Lcom/android/settings_ex/IccLockSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$4;->this$0:Lcom/android/settings_ex/IccLockSettings;

    # getter for: Lcom/android/settings_ex/IccLockSettings;->mPersoDialog:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$1500(Lcom/android/settings_ex/IccLockSettings;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f0e063c

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 542
    :cond_0
    return-void
.end method
