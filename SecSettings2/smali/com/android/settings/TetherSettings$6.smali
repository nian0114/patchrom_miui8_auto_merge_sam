.class Lcom/android/settings_ex/TetherSettings$6;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/TetherSettings;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 444
    iput-object p1, p0, Lcom/android/settings_ex/TetherSettings$6;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$6;->this$0:Lcom/android/settings_ex/TetherSettings;

    # getter for: Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings_ex/TetherSettings;->access$600(Lcom/android/settings_ex/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 447
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$6;->this$0:Lcom/android/settings_ex/TetherSettings;

    # getter for: Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings_ex/TetherSettings;->access$600(Lcom/android/settings_ex/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 448
    return-void
.end method
