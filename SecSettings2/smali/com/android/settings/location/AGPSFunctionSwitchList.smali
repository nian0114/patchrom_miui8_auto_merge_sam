.class public Lcom/android/settings_ex/location/AGPSFunctionSwitchList;
.super Landroid/app/Activity;
.source "AGPSFunctionSwitchList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mRadioButton1:Landroid/widget/RadioButton;

.field mRadioButton2:Landroid/widget/RadioButton;

.field mRadioButton3:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 119
    const-string v0, "AGPSFunctionSwitch"

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "agps_function_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    invoke-virtual {p0}, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->finish()V

    .line 124
    :goto_0
    return-void

    .line 101
    :pswitch_0
    const-string v0, "AGPSFunctionSwitch"

    const-string v1, "agps_on_for_home_network"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "agps_function_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    invoke-virtual {p0}, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->finish()V

    goto :goto_0

    .line 107
    :pswitch_1
    const-string v0, "AGPSFunctionSwitch"

    const-string v1, "agps_on_for_all_network"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "agps_function_switch"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->finish()V

    goto :goto_0

    .line 113
    :pswitch_2
    const-string v0, "AGPSFunctionSwitch"

    const-string v1, "agps_off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "agps_function_switch"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    invoke-virtual {p0}, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->finish()V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x7f0d0097
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v1, 0x7f040023

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "agps_function_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 42
    .local v0, "agps_function_switch_mode":I
    const-string v1, "AGPSFunctionSwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate : Settings AGPS_FUNCTION_SWITCH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const v1, 0x7f0d0097

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->mRadioButton1:Landroid/widget/RadioButton;

    .line 46
    const v1, 0x7f0d0098

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->mRadioButton2:Landroid/widget/RadioButton;

    .line 47
    const v1, 0x7f0d0099

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->mRadioButton3:Landroid/widget/RadioButton;

    .line 49
    packed-switch v0, :pswitch_data_0

    .line 60
    iget-object v1, p0, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 64
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v1, p0, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v1, p0, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->mRadioButton3:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void

    .line 51
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 57
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->mRadioButton3:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "agps_function_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 76
    .local v0, "agps_function_switch_mode":I
    const-string v1, "AGPSFunctionSwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume : Settings. AGPS_FUNCTION_SWITCH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const v1, 0x7f0d0097

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->mRadioButton1:Landroid/widget/RadioButton;

    .line 79
    const v1, 0x7f0d0098

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->mRadioButton2:Landroid/widget/RadioButton;

    .line 80
    const v1, 0x7f0d0099

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->mRadioButton3:Landroid/widget/RadioButton;

    .line 82
    packed-switch v0, :pswitch_data_0

    .line 93
    iget-object v1, p0, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 96
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 87
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 90
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/location/AGPSFunctionSwitchList;->mRadioButton3:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
