.class Lcom/sec/android/app/camera/CameraDialog$CustomDialog$2;
.super Ljava/lang/Object;
.source "CameraDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/CameraDialog$CustomDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraDialog$CustomDialog;)V
    .locals 0

    .prologue
    .line 851
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog$2;->this$1:Lcom/sec/android/app/camera/CameraDialog$CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 854
    # getter for: Lcom/sec/android/app/camera/CameraDialog;->mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;
    invoke-static {}, Lcom/sec/android/app/camera/CameraDialog;->access$400()Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 855
    # getter for: Lcom/sec/android/app/camera/CameraDialog;->mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;
    invoke-static {}, Lcom/sec/android/app/camera/CameraDialog;->access$400()Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog$2;->this$1:Lcom/sec/android/app/camera/CameraDialog$CustomDialog;

    # getter for: Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->mKeyId:I
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->access$500(Lcom/sec/android/app/camera/CameraDialog$CustomDialog;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;->onNegativeButtonClicked(I)V

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog$2;->this$1:Lcom/sec/android/app/camera/CameraDialog$CustomDialog;

    # getter for: Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->access$600(Lcom/sec/android/app/camera/CameraDialog$CustomDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 858
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog$2;->this$1:Lcom/sec/android/app/camera/CameraDialog$CustomDialog;

    # getter for: Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->access$600(Lcom/sec/android/app/camera/CameraDialog$CustomDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 860
    :cond_1
    return-void
.end method
