.class Lcom/android/settings_ex/nfc/AndroidBeam$4;
.super Ljava/lang/Object;
.source "AndroidBeam.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/nfc/AndroidBeam;->makeAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nfc/AndroidBeam;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nfc/AndroidBeam;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/settings_ex/nfc/AndroidBeam$4;->this$0:Lcom/android/settings_ex/nfc/AndroidBeam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam$4;->this$0:Lcom/android/settings_ex/nfc/AndroidBeam;

    # getter for: Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/AndroidBeam;->access$200(Lcom/android/settings_ex/nfc/AndroidBeam;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 290
    return-void
.end method
