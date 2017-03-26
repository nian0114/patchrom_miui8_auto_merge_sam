.class Lcom/sec/android/app/camera/menu/OverlayLayout$3;
.super Ljava/lang/Object;
.source "OverlayLayout.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/OverlayLayout;->onCameraSettingChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$3;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$3;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$200(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 407
    return-void
.end method
