.class Lcom/android/settings_ex/accessibility/directaccess/DirectAccessFragment$1;
.super Landroid/database/ContentObserver;
.source "DirectAccessFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accessibility/directaccess/DirectAccessFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accessibility/directaccess/DirectAccessFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accessibility/directaccess/DirectAccessFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/android/settings_ex/accessibility/directaccess/DirectAccessFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/android/settings_ex/accessibility/directaccess/DirectAccessFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/accessibility/directaccess/DirectAccessFragment;->updateDirectAccessMenu()V

    .line 68
    return-void
.end method
