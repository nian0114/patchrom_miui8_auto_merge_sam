.class Lcom/android/settings_ex/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$3;
.super Ljava/lang/Object;
.source "KnoxChooseLockTwoFactor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->showSensorErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/settings_ex/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$3;->this$0:Lcom/android/settings_ex/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 520
    const-string v0, "KnoxChooseLockTwoFactor"

    const-string v1, "showSensorErrorDialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v0, p0, Lcom/android/settings_ex/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$3;->this$0:Lcom/android/settings_ex/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    # getter for: Lcom/android/settings_ex/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings_ex/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->access$100(Lcom/android/settings_ex/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 522
    return-void
.end method
