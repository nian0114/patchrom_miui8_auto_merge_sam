.class Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing$9;
.super Ljava/lang/Object;
.source "AccessibilitySettingsHearing.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing$9;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 636
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing$9;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;

    # getter for: Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;->mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;->access$300(Lcom/android/settings_ex/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 638
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 639
    const/4 v0, 0x1

    .line 641
    :cond_0
    return v0
.end method
