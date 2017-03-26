.class public Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ItemDataRadioButton.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;
    }
.end annotation


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCommandId:I

.field private mOnSelectedChangeListener:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;

.field private mPrevSelected:Z

.field private mSelected:Z

.field private mSelectedImage:Lcom/samsung/android/glview/GLImage;

.field private mUnSelectedImage:Lcom/samsung/android/glview/GLImage;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V
    .locals 8
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "commandId"    # I

    .prologue
    .line 41
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelected:Z

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mPrevSelected:Z

    .line 43
    const/4 v6, 0x0

    .line 44
    .local v6, "offsetX":F
    const/4 v7, 0x0

    .line 46
    .local v7, "offsetY":F
    iput p6, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCommandId:I

    .line 47
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 49
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f02028c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f0c0036

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setTint(I)V

    .line 51
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f02028b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f0c0035

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setTint(I)V

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x3f0ccccd    # 0.55f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    sub-float v0, p4, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    cmpl-float v0, p5, v0

    if-lez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    sub-float v0, p5, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v7, v0, v1

    .line 61
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, v7, v0

    if-eqz v0, :cond_3

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/glview/GLImage;->moveLayout(FF)V

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/glview/GLImage;->moveLayout(FF)V

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->refreshView()V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V
    .locals 5
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "commandId"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 73
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 35
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelected:Z

    .line 36
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mPrevSelected:Z

    .line 75
    iput p4, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCommandId:I

    .line 76
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 77
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 79
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const v2, 0x7f02028c

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f0c0036

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setTint(I)V

    .line 81
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const v2, 0x7f02028b

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f0c0035

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setTint(I)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x3f0ccccd    # 0.55f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->refreshView()V

    .line 89
    return-void
.end method

.method private refreshView()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelected:Z

    .line 129
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCommandId:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setDraggable(Z)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setDraggable(Z)V

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelected:Z

    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mPrevSelected:Z

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mOnSelectedChangeListener:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mOnSelectedChangeListener:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelected:Z

    invoke-interface {v0, p0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;->onSelectedChanged(Lcom/samsung/android/glview/GLView;Z)V

    .line 136
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelected:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mPrevSelected:Z

    .line 137
    return-void

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 127
    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelected:Z

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 97
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 98
    return-void
.end method

.method public getSelected()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelected:Z

    return v0
.end method

.method public onCameraSettingChanged(II)V
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->refreshView()V

    goto :goto_0
.end method

.method public setOnSelectedChangeListener(Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mOnSelectedChangeListener:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mOnSelectedChangeListener:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelected:Z

    invoke-interface {v0, p0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;->onSelectedChanged(Lcom/samsung/android/glview/GLView;Z)V

    .line 117
    return-void
.end method
