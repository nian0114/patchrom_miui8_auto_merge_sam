.class Lcom/android/settings_ex/accessibility/ToggleMagnifierPreferenceFragment$9;
.super Ljava/lang/Object;
.source "ToggleMagnifierPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accessibility/ToggleMagnifierPreferenceFragment;->showFingerMagnifierDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accessibility/ToggleMagnifierPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accessibility/ToggleMagnifierPreferenceFragment;)V
    .locals 0

    .prologue
    .line 793
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/ToggleMagnifierPreferenceFragment$9;->this$0:Lcom/android/settings_ex/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 796
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/ToggleMagnifierPreferenceFragment$9;->this$0:Lcom/android/settings_ex/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings_ex/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings_ex/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_magnifier"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 799
    .local v0, "state":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/ToggleMagnifierPreferenceFragment$9;->this$0:Lcom/android/settings_ex/accessibility/ToggleMagnifierPreferenceFragment;

    # invokes: Lcom/android/settings_ex/accessibility/ToggleMagnifierPreferenceFragment;->updatedEnableState(Z)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/accessibility/ToggleMagnifierPreferenceFragment;->access$200(Lcom/android/settings_ex/accessibility/ToggleMagnifierPreferenceFragment;Z)V

    .line 800
    return-void

    .end local v0    # "state":Z
    :cond_0
    move v0, v1

    .line 796
    goto :goto_0
.end method
