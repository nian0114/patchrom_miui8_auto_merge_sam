.class Lcom/sec/android/app/camera/RequestPermissionActivity$3;
.super Ljava/lang/Object;
.source "RequestPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/RequestPermissionActivity;->showPermissionRationaleDialog(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/RequestPermissionActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/RequestPermissionActivity;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/sec/android/app/camera/RequestPermissionActivity$3;->this$0:Lcom/sec/android/app/camera/RequestPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/RequestPermissionActivity$3;->this$0:Lcom/sec/android/app/camera/RequestPermissionActivity;

    # invokes: Lcom/sec/android/app/camera/RequestPermissionActivity;->dismissPermissionRationaleDialog()V
    invoke-static {v0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->access$000(Lcom/sec/android/app/camera/RequestPermissionActivity;)V

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/camera/RequestPermissionActivity$3;->this$0:Lcom/sec/android/app/camera/RequestPermissionActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->finish()V

    .line 388
    return-void
.end method
