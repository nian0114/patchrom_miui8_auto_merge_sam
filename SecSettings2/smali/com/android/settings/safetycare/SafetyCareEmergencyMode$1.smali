.class Lcom/android/settings_ex/safetycare/SafetyCareEmergencyMode$1;
.super Landroid/content/BroadcastReceiver;
.source "SafetyCareEmergencyMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/safetycare/SafetyCareEmergencyMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/safetycare/SafetyCareEmergencyMode;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/safetycare/SafetyCareEmergencyMode;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings_ex/safetycare/SafetyCareEmergencyMode$1;->this$0:Lcom/android/settings_ex/safetycare/SafetyCareEmergencyMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    const-string v2, "reason"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 123
    .local v1, "reason":I
    if-gtz v1, :cond_0

    .line 124
    iget-object v2, p0, Lcom/android/settings_ex/safetycare/SafetyCareEmergencyMode$1;->this$0:Lcom/android/settings_ex/safetycare/SafetyCareEmergencyMode;

    # getter for: Lcom/android/settings_ex/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v2}, Lcom/android/settings_ex/safetycare/SafetyCareEmergencyMode;->access$000(Lcom/android/settings_ex/safetycare/SafetyCareEmergencyMode;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/settings_ex/safetycare/SafetyCareEmergencyMode$1;->this$0:Lcom/android/settings_ex/safetycare/SafetyCareEmergencyMode;

    # getter for: Lcom/android/settings_ex/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v2}, Lcom/android/settings_ex/safetycare/SafetyCareEmergencyMode;->access$000(Lcom/android/settings_ex/safetycare/SafetyCareEmergencyMode;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 129
    .end local v1    # "reason":I
    :cond_0
    return-void
.end method
