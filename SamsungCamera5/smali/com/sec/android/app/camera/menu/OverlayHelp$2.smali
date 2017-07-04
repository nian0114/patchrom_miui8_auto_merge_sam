.class Lcom/sec/android/app/camera/menu/OverlayHelp$2;
.super Ljava/lang/Object;
.source "OverlayHelp.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$2;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method
