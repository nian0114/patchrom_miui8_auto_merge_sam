.class public Lcom/sec/android/app/camera/menu/SilverBaseMenu;
.super Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
.source "SilverBaseMenu.java"


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 0
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p7, "zOrder"    # I

    .prologue
    .line 35
    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public clearSideQuickSetting()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public disableView(I)V
    .locals 0
    .param p1, "bitMarker"    # I

    .prologue
    .line 49
    return-void
.end method

.method public enableView(I)V
    .locals 0
    .param p1, "bitMarker"    # I

    .prologue
    .line 54
    return-void
.end method

.method protected getAnchor(I)Lcom/samsung/android/glview/GLImage;
    .locals 1
    .param p1, "commandId"    # I

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndicators()Lcom/sec/android/app/camera/menu/Indicators;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideCaptureProgressText()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public hideView(I)V
    .locals 0
    .param p1, "bitMarker"    # I

    .prologue
    .line 72
    return-void
.end method

.method public isAnimationRunning()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method protected makeBaseMenuVIAnimation()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method protected makeRecordingMenuVIAnimation()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public onFlingDirection(II)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 176
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 181
    return-void
.end method

.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 192
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 197
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public registerEAM()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public setBaseMenuAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 118
    return-void
.end method

.method public setCapturingProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 124
    return-void
.end method

.method public showCaptureProgressText()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public showView(I)V
    .locals 0
    .param p1, "bitMarker"    # I

    .prologue
    .line 136
    return-void
.end method

.method public unregisterEAM()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public varargs updateSideQuickSetting([I)V
    .locals 0
    .param p1, "commandIds"    # [I

    .prologue
    .line 147
    return-void
.end method
