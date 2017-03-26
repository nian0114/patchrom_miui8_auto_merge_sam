.class Lcom/sec/android/app/camera/RequestPermissionActivity$2;
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
    .line 375
    iput-object p1, p0, Lcom/sec/android/app/camera/RequestPermissionActivity$2;->this$0:Lcom/sec/android/app/camera/RequestPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/RequestPermissionActivity$2;->this$0:Lcom/sec/android/app/camera/RequestPermissionActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/PermissionUtils;->startApplicationSettingInfo(Landroid/app/Activity;I)V

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/RequestPermissionActivity$2;->this$0:Lcom/sec/android/app/camera/RequestPermissionActivity;

    # invokes: Lcom/sec/android/app/camera/RequestPermissionActivity;->dismissPermissionRationaleDialog()V
    invoke-static {v0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->access$000(Lcom/sec/android/app/camera/RequestPermissionActivity;)V

    .line 380
    return-void
.end method
