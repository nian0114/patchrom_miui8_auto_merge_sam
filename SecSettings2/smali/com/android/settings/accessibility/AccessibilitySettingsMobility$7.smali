.class Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility$7;
.super Ljava/lang/Object;
.source "AccessibilitySettingsMobility.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility$7;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility$7;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;

    # invokes: Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;->access$500(Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 546
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility$7;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;

    const/4 v1, 0x5

    # invokes: Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;->access$600(Lcom/android/settings_ex/accessibility/AccessibilitySettingsMobility;I)V

    .line 547
    return-void
.end method
