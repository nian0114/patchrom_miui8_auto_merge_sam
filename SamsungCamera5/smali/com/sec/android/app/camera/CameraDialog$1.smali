.class Lcom/sec/android/app/camera/CameraDialog$1;
.super Ljava/lang/Object;
.source "CameraDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraDialog;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraDialog$1;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraDialog$1;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraDialog$1;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraDialog;->dismiss()V

    .line 343
    return-void
.end method
