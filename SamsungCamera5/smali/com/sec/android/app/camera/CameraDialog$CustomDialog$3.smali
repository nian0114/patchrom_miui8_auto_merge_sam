.class Lcom/sec/android/app/camera/CameraDialog$CustomDialog$3;
.super Ljava/lang/Object;
.source "CameraDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
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
    .line 868
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog$3;->this$1:Lcom/sec/android/app/camera/CameraDialog$CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 871
    # getter for: Lcom/sec/android/app/camera/CameraDialog;->mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;
    invoke-static {}, Lcom/sec/android/app/camera/CameraDialog;->access$400()Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 872
    # getter for: Lcom/sec/android/app/camera/CameraDialog;->mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;
    invoke-static {}, Lcom/sec/android/app/camera/CameraDialog;->access$400()Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog$3;->this$1:Lcom/sec/android/app/camera/CameraDialog$CustomDialog;

    # getter for: Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->mKeyId:I
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->access$500(Lcom/sec/android/app/camera/CameraDialog$CustomDialog;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;->onPositiveButtonClicked(I)V

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog$3;->this$1:Lcom/sec/android/app/camera/CameraDialog$CustomDialog;

    # getter for: Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->access$700(Lcom/sec/android/app/camera/CameraDialog$CustomDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 875
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog$3;->this$1:Lcom/sec/android/app/camera/CameraDialog$CustomDialog;

    # getter for: Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->access$700(Lcom/sec/android/app/camera/CameraDialog$CustomDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 877
    :cond_1
    return-void
.end method
