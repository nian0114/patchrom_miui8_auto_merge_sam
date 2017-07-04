.class Lcom/sec/android/app/camera/menu/OverlayHelp$3;
.super Ljava/lang/Object;
.source "OverlayHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/OverlayHelp;->showHRMSensorCaptureGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$3;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$3;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp;->setHRMSensorCaptureGuideEnabled(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$100(Lcom/sec/android/app/camera/menu/OverlayHelp;Z)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$3;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->hideHRMSensorCaptureGuide()V

    .line 126
    return-void
.end method
