.class Lcom/android/settings_ex/applications/UninstallMultipleScreen$3;
.super Ljava/lang/Object;
.source "UninstallMultipleScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/UninstallMultipleScreen;->showConfirmationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/UninstallMultipleScreen;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/UninstallMultipleScreen;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/settings_ex/applications/UninstallMultipleScreen$3;->this$0:Lcom/android/settings_ex/applications/UninstallMultipleScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 232
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 233
    return-void
.end method
