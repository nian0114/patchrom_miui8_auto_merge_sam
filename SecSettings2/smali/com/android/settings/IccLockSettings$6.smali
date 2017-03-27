.class Lcom/android/settings_ex/IccLockSettings$6;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V
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
    .line 630
    iput-object p1, p0, Lcom/android/settings_ex/IccLockSettings$6;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 633
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings$6;->this$0:Lcom/android/settings_ex/IccLockSettings;

    # getter for: Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;
    invoke-static {v0}, Lcom/android/settings_ex/IccLockSettings;->access$700(Lcom/android/settings_ex/IccLockSettings;)Lcom/android/settings_ex/EditPinPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/EditPinPreference;->showPinDialog()V

    .line 634
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings$6;->this$0:Lcom/android/settings_ex/IccLockSettings;

    # getter for: Lcom/android/settings_ex/IccLockSettings;->mDialogState:I
    invoke-static {v0}, Lcom/android/settings_ex/IccLockSettings;->access$800(Lcom/android/settings_ex/IccLockSettings;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 635
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings$6;->this$0:Lcom/android/settings_ex/IccLockSettings;

    # getter for: Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings_ex/IccLockSettings;->access$600(Lcom/android/settings_ex/IccLockSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 636
    :cond_0
    return-void
.end method
