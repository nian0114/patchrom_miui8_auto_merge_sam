.class Lcom/sec/android/app/camera/CameraDialog$6;
.super Ljava/lang/Object;
.source "CameraDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 514
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraDialog$6;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "arg1"    # Z

    .prologue
    .line 517
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 518
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraDialog$6;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 523
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraDialog$6;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
