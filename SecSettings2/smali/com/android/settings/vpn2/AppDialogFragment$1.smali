.class Lcom/android/settings_ex/vpn2/AppDialogFragment$1;
.super Ljava/lang/Object;
.source "AppDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/vpn2/AppDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/vpn2/AppDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/vpn2/AppDialogFragment;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings_ex/vpn2/AppDialogFragment$1;->this$0:Lcom/android/settings_ex/vpn2/AppDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/AppDialogFragment$1;->this$0:Lcom/android/settings_ex/vpn2/AppDialogFragment;

    # invokes: Lcom/android/settings_ex/vpn2/AppDialogFragment;->onDisconnect(Landroid/content/DialogInterface;)V
    invoke-static {v0, p1}, Lcom/android/settings_ex/vpn2/AppDialogFragment;->access$000(Lcom/android/settings_ex/vpn2/AppDialogFragment;Landroid/content/DialogInterface;)V

    .line 92
    return-void
.end method
