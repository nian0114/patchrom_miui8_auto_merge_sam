.class public Lcom/sec/android/app/camera/widget/gl/ItemDataButton;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ItemDataButton.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ItemDataButton"


# instance fields
.field private mButton:Lcom/samsung/android/glview/GLButton;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCommandId:I

.field private mGivenSize:Z

.field private mHeight:F

.field protected mRippleEffectEnabled:Z

.field private mWidth:F


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
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 50
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 39
    iput-boolean v7, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mRippleEffectEnabled:Z

    .line 45
    iput v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mWidth:F

    .line 46
    iput v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mHeight:F

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mGivenSize:Z

    .line 52
    iput p6, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    .line 53
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 54
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 56
    iput p4, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mWidth:F

    .line 57
    iput p5, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mHeight:F

    .line 58
    iput-boolean v7, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mGivenSize:Z

    .line 60
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->refreshButton()V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFII)V
    .locals 8
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "commandId"    # I
    .param p7, "type"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 64
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 39
    iput-boolean v7, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mRippleEffectEnabled:Z

    .line 45
    iput v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mWidth:F

    .line 46
    iput v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mHeight:F

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mGivenSize:Z

    .line 66
    iput p6, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    .line 67
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 68
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 70
    iput p4, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mWidth:F

    .line 71
    iput p5, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mHeight:F

    .line 72
    iput-boolean v7, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mGivenSize:Z

    .line 74
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->refreshButton()V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "commandId"    # I

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mRippleEffectEnabled:Z

    .line 45
    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mWidth:F

    .line 46
    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mHeight:F

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mGivenSize:Z

    .line 80
    iput p4, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    .line 81
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 82
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->refreshButton()V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)Lcom/samsung/android/glview/GLView$ClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)Lcom/samsung/android/glview/GLView$ClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)Lcom/samsung/android/glview/GLView$ClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)Lcom/samsung/android/glview/GLView$ClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)Lcom/samsung/android/glview/GLView$TouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)Lcom/samsung/android/glview/GLView$TouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 94
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 95
    return-void
.end method

.method public enableRippleEffect(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mRippleEffectEnabled:Z

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 100
    return-void
.end method

.method public onCameraSettingChanged(II)V
    .locals 2
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    if-ne v0, v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->refreshButton()V

    goto :goto_0
.end method

.method protected onDraw()V
    .locals 4

    .prologue
    .line 259
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 260
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 263
    :cond_0
    return-void
.end method

.method protected refreshButton()V
    .locals 14

    .prologue
    .line 266
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v10

    .line 267
    .local v10, "menuid":I
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v11

    .line 268
    .local v11, "modeid":I
    invoke-static {v10, v11}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v13

    .line 270
    .local v13, "selectedCommandId":I
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_5

    .line 271
    const/16 v13, 0x63

    .line 284
    :cond_0
    :goto_0
    invoke-static {v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v12

    .line 286
    .local v12, "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-nez v0, :cond_1

    .line 287
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mGivenSize:Z

    if-eqz v0, :cond_a

    .line 288
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mHeight:F

    iget v6, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v7, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v8, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    .line 293
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setObjectTag(Ljava/lang/String;)V

    .line 296
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    if-ne v13, v0, :cond_b

    .line 297
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setSubTitle(Ljava/lang/String;)V

    .line 307
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setSubTitle(Ljava/lang/String;)V

    .line 310
    :cond_2
    const/4 v0, 0x4

    if-ne v10, v0, :cond_d

    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setSubTitle(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v13}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setContentDescription(Ljava/lang/String;)V

    .line 317
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    if-eqz v0, :cond_e

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    iget v1, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v2, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v3, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    .line 323
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$3;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$4;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$5;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 352
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_4

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 355
    :cond_4
    return-void

    .line 272
    .end local v12    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 273
    const/16 v13, 0x8

    goto/16 :goto_0

    .line 274
    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_7

    .line 275
    const/16 v13, 0x7f

    goto/16 :goto_0

    .line 276
    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_8

    .line 277
    const/16 v13, 0x81

    goto/16 :goto_0

    .line 278
    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    const/16 v1, 0x82

    if-ne v0, v1, :cond_9

    .line 279
    const/16 v13, 0x82

    goto/16 :goto_0

    .line 280
    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    .line 281
    const/16 v13, 0x5a

    goto/16 :goto_0

    .line 291
    .restart local v12    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_a
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v5, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v6, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_1

    .line 299
    :cond_b
    iget v0, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    if-eqz v0, :cond_c

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setSubTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 302
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setSubTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 313
    :cond_d
    iget v0, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    if-eqz v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setContentDescription(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 320
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    iget v1, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v2, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v3, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    goto/16 :goto_4
.end method

.method public setButtonPressListener(Lcom/samsung/android/glview/GLButton$ButtonPressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setButtonPressListener(Lcom/samsung/android/glview/GLButton$ButtonPressListener;)V

    .line 114
    return-void
.end method

.method public setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$ClickListener;

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 132
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 133
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$1;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    goto :goto_0
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setContentDescription(Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method

.method public setDim(Z)V
    .locals 1
    .param p1, "dim"    # Z

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 147
    :cond_0
    return-void
.end method

.method public setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$FocusListener;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    .line 152
    if-nez p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 166
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$2;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    goto :goto_0
.end method

.method public setHighlightVisibility(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setHighlightVisibility(Z)V

    .line 172
    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 178
    :cond_0
    return-void
.end method

.method public setResourceOffset(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->getWidth()F

    move-result v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->getHeight()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 182
    :cond_0
    const/4 v0, 0x0

    .line 188
    :goto_0
    return v0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    .line 188
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setRippleDiameter(F)V
    .locals 1
    .param p1, "diameter"    # F

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 200
    :cond_0
    return-void
.end method

.method public declared-synchronized setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLButton;->setSize(FF)V

    .line 207
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mWidth:F

    .line 208
    iput p2, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mHeight:F

    .line 209
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setSubTitle(Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method

.method public setText(Lcom/samsung/android/glview/GLText;)V
    .locals 1
    .param p1, "text"    # Lcom/samsung/android/glview/GLText;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 223
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setText(Ljava/lang/String;)V

    .line 229
    :cond_0
    return-void
.end method

.method public setTextAlign(II)V
    .locals 1
    .param p1, "hAlign"    # I
    .param p2, "vAlign"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    .line 235
    :cond_0
    return-void
.end method

.method public setTextPosition(FF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLButton;->setTextPosition(FF)V

    .line 241
    :cond_0
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setTextVisibility(Z)V

    .line 247
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setTitle(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 255
    :cond_0
    return-void
.end method
