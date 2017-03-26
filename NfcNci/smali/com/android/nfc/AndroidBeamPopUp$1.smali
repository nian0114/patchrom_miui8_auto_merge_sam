.class Lcom/android/nfc/AndroidBeamPopUp$1;
.super Ljava/lang/Object;
.source "AndroidBeamPopUp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 59
    iput-object p1, p0, Lcom/android/nfc/AndroidBeamPopUp$1;->this$0:Lcom/android/nfc/AndroidBeamPopUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/nfc/AndroidBeamPopUp$1;->this$0:Lcom/android/nfc/AndroidBeamPopUp;

    invoke-virtual {v0}, Lcom/android/nfc/AndroidBeamPopUp;->finish()V

    .line 63
    return-void
.end method
