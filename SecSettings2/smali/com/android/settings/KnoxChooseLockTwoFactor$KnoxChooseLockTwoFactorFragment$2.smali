.class Lcom/android/settings_ex/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$2;
.super Ljava/lang/Object;
.source "KnoxChooseLockTwoFactor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 269
    iput-object p1, p0, Lcom/android/settings_ex/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$2;->this$0:Lcom/android/settings_ex/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/settings_ex/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$2;->this$0:Lcom/android/settings_ex/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    # invokes: Lcom/android/settings_ex/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->launchLockType()V
    invoke-static {v0}, Lcom/android/settings_ex/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->access$200(Lcom/android/settings_ex/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V

    .line 273
    return-void
.end method
