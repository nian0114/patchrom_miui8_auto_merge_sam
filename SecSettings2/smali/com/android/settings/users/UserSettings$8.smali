.class Lcom/android/settings_ex/users/UserSettings$8;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/users/UserSettings;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lcom/android/settings_ex/users/UserSettings$8;->this$0:Lcom/android/settings_ex/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 671
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings$8;->this$0:Lcom/android/settings_ex/users/UserSettings;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/settings_ex/users/UserSettings;->onAddUserClicked(I)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/users/UserSettings;->access$1400(Lcom/android/settings_ex/users/UserSettings;I)V

    .line 674
    return-void

    .line 671
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
