.class Lcom/sec/android/app/camera/menu/OverlayLayout$4;
.super Ljava/lang/Object;
.source "OverlayLayout.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/OverlayLayout;->init()V
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
    .line 1081
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$4;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v3, 0x0

    .line 1084
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$4;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$200(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1085
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$4;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$4;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$400(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    const/16 v2, 0x232f

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(IZ)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    # setter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$302(Lcom/sec/android/app/camera/menu/OverlayLayout;Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;)Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    .line 1086
    return v3
.end method
