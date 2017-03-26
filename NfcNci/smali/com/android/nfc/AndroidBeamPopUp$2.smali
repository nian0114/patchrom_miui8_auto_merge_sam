.class Lcom/android/nfc/AndroidBeamPopUp$2;
.super Ljava/lang/Object;
.source "AndroidBeamPopUp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/AndroidBeamPopUp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/AndroidBeamPopUp;


# direct methods
.method constructor <init>(Lcom/android/nfc/AndroidBeamPopUp;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/nfc/AndroidBeamPopUp$2;->this$0:Lcom/android/nfc/AndroidBeamPopUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "mKeyCode"    # I
    .param p3, "mKeyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 71
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/nfc/AndroidBeamPopUp$2;->this$0:Lcom/android/nfc/AndroidBeamPopUp;

    invoke-virtual {v0}, Lcom/android/nfc/AndroidBeamPopUp;->finish()V

    .line 74
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
