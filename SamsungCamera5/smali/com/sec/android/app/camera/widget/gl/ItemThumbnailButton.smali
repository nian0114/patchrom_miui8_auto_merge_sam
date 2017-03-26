.class public Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ItemThumbnailButton.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ItemThumbnailButton"


# instance fields
.field private mButton:Lcom/samsung/android/glview/GLSelectButton;

.field private mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mButtonHighlight:Lcom/samsung/android/glview/GLNinePatch;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCommandId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "commandId"    # I

    .prologue
    .line 49
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 50
    iput p4, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mCommandId:I

    .line 51
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 52
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 54
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->refreshButton()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/samsung/android/glview/GLNinePatch;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonHighlight:Lcom/samsung/android/glview/GLNinePatch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/samsung/android/glview/GLView$ClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/samsung/android/glview/GLView$ClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/samsung/android/glview/GLSelectButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/samsung/android/glview/GLView$TouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mCommandId:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/samsung/android/glview/GLView$TouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    return-object v0
.end method

.method private refreshButton()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 231
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    const/16 v0, 0x1f40

    invoke-static {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v8

    .line 237
    .local v8, "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v5, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v6, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 239
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->setObjectTag(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLSelectButton;->setRotatable(Z)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLSelectButton;->setCenterPivot(Z)V

    .line 242
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const v3, 0x7f02020f

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonHighlight:Lcom/samsung/android/glview/GLNinePatch;

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonHighlight:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLNinePatch;->setBypassTouch(Z)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonHighlight:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonHighlight:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 255
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$2;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$3;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$4;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 313
    :cond_1
    return-void

    .line 234
    .end local v8    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v8

    .restart local v8    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    goto/16 :goto_0

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonHighlight:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 63
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 67
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->clear()V

    .line 71
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 73
    :cond_2
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 74
    return-void
.end method

.method public getButton()Lcom/samsung/android/glview/GLSelectButton;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    return-object v0
.end method

.method public getSelected()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->getSelected()Z

    move-result v0

    return v0
.end method

.method public onCameraSettingChanged(II)V
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->refreshButton()V

    goto :goto_0
.end method

.method protected onDraw()V
    .locals 4

    .prologue
    .line 222
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 223
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 226
    :cond_0
    return-void
.end method

.method public setExtraDescription(Z)V
    .locals 1
    .param p1, "hasExtraDescription"    # Z

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setExtraDescription(Z)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setExtraDescription(Z)V

    .line 99
    :cond_0
    return-void
.end method

.method public setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$FocusListener;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    .line 104
    if-nez p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 131
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$1;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    goto :goto_0
.end method

.method public setMargin(I)V
    .locals 4
    .param p1, "margin"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->getWidth()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->getHeight()F

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonHighlight:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonHighlight:Lcom/samsung/android/glview/GLNinePatch;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->moveLayoutAbsolute(FF)V

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->getWidth()F

    move-result v0

    mul-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->getHeight()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-super {p0, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 142
    return-void
.end method

.method public setMargin(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->getWidth()F

    move-result v1

    int-to-float v2, p1

    add-float/2addr v1, v2

    int-to-float v2, p3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->getHeight()F

    move-result v2

    int-to-float v3, p2

    add-float/2addr v2, v3

    int-to-float v3, p4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonHighlight:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonHighlight:Lcom/samsung/android/glview/GLNinePatch;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->moveLayoutAbsolute(FF)V

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->getWidth()F

    move-result v0

    int-to-float v1, p1

    add-float/2addr v0, v1

    int-to-float v1, p3

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->getHeight()F

    move-result v1

    int-to-float v2, p2

    add-float/2addr v1, v2

    int-to-float v2, p4

    add-float/2addr v1, v2

    invoke-super {p0, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 153
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setMute(Z)V

    .line 159
    :cond_0
    return-void
.end method

.method public setPaddings(I)V
    .locals 4
    .param p1, "padding"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->getWidth()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->getHeight()F

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setSize(FF)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonHighlight:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonHighlight:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->getWidth()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->getHeight()F

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonHighlight:Lcom/samsung/android/glview/GLNinePatch;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->moveLayoutAbsolute(FF)V

    .line 170
    :cond_1
    return-void
.end method

.method public setPaddings(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->getWidth()F

    move-result v1

    int-to-float v2, p1

    sub-float/2addr v1, v2

    int-to-float v2, p3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->getHeight()F

    move-result v2

    int-to-float v3, p2

    sub-float/2addr v2, v3

    int-to-float v3, p4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setSize(FF)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonHighlight:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonHighlight:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->getWidth()F

    move-result v1

    int-to-float v2, p1

    sub-float/2addr v1, v2

    int-to-float v2, p3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->getHeight()F

    move-result v2

    int-to-float v3, p2

    sub-float/2addr v2, v3

    int-to-float v3, p4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonHighlight:Lcom/samsung/android/glview/GLNinePatch;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->moveLayoutAbsolute(FF)V

    .line 181
    :cond_1
    return-void
.end method

.method public setResourceOffset(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->getWidth()F

    move-result v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->getHeight()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 185
    :cond_0
    const/4 v0, 0x0

    .line 190
    :goto_0
    return v0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLSelectButton;->setResourceOffset(FF)Z

    .line 190
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLSelectButton;->setSize(FF)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonHighlight:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 202
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setSubTitle(Ljava/lang/String;)V

    .line 210
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setTitle(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    .line 218
    :cond_0
    return-void
.end method
