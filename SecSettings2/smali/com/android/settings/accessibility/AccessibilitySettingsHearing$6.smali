.class Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing$6;
.super Ljava/lang/Object;
.source "AccessibilitySettingsHearing.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$mcheck_flash:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing$6;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;

    iput-object p2, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing$6;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing$6;->val$mcheck_flash:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x1

    .line 539
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing$6;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_flash_noti"

    iget-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing$6;->val$mcheck_flash:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 540
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing$6;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 541
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 542
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing$6;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 543
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing$6;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;

    # invokes: Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;->access$400(Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_merged_mute_pause"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 544
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing$6;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;

    # invokes: Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;->access$500(Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_overturn"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 545
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing$6;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;

    # invokes: Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;->access$600(Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flash_notification"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 546
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing$6;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "FLNO"

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    return-void
.end method
