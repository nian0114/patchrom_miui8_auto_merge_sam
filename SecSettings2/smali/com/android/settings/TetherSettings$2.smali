.class Lcom/android/settings_ex/TetherSettings$2;
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
    .line 402
    iput-object p1, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings_ex/TetherSettings;->startProvisioningIfNecessary(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/TetherSettings;->access$400(Lcom/android/settings_ex/TetherSettings;I)V

    .line 406
    return-void
.end method
