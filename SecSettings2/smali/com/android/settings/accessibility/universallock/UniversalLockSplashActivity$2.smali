.class Lcom/android/settings_ex/accessibility/universallock/UniversalLockSplashActivity$2;
.super Landroid/database/ContentObserver;
.source "UniversalLockSplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accessibility/universallock/UniversalLockSplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accessibility/universallock/UniversalLockSplashActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accessibility/universallock/UniversalLockSplashActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/universallock/UniversalLockSplashActivity$2;->this$0:Lcom/android/settings_ex/accessibility/universallock/UniversalLockSplashActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/universallock/UniversalLockSplashActivity$2;->this$0:Lcom/android/settings_ex/accessibility/universallock/UniversalLockSplashActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/accessibility/universallock/UniversalLockSplashActivity;->setSummary()V

    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/universallock/UniversalLockSplashActivity$2;->this$0:Lcom/android/settings_ex/accessibility/universallock/UniversalLockSplashActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/accessibility/universallock/UniversalLockSplashActivity;->toggleSettings()V

    .line 192
    return-void
.end method
