.class Lcom/android/settings_ex/TetherSettings$14;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/TetherSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TetherSettings;)V
    .locals 0

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/android/settings_ex/TetherSettings$14;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$14;->this$0:Lcom/android/settings_ex/TetherSettings;

    # getter for: Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings_ex/TetherSettings;->access$600(Lcom/android/settings_ex/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1207
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$14;->this$0:Lcom/android/settings_ex/TetherSettings;

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1208
    return-void
.end method
