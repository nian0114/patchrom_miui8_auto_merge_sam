.class public Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ItemEmptyThumbnailButton.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# static fields
.field private static final BUTTON_X:I

.field private static final LINE_PADDING:I

.field private static final PREVIEW_HEIGHT:I

.field private static final PREVIEW_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "ItemEmptyThumbnailButton"

.field private static final THUMBNAIL_PREVIEW_TYPE_BUTTON_PADDING:I


# instance fields
.field private mButton:Lcom/samsung/android/glview/GLSelectButton;

.field private mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

.field private mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCommandId:I

.field private mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f09025b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->THUMBNAIL_PREVIEW_TYPE_BUTTON_PADDING:I

    .line 42
    const v0, 0x7f0900fd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->BUTTON_X:I

    .line 43
    const v0, 0x7f0900ff

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->LINE_PADDING:I

    .line 44
    const v0, 0x7f0900e1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->PREVIEW_WIDTH:I

    .line 45
    const v0, 0x7f0900e0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->PREVIEW_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "commandId"    # I

    .prologue
    .line 56
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 58
    iput p4, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    .line 59
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 60
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 62
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 65
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->refreshButton()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;)Lcom/samsung/android/glview/GLView$TouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;)Lcom/samsung/android/glview/GLView$TouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method private refreshButton()V
    .locals 10

    .prologue
    const/16 v2, 0x1f40

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 214
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 215
    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v8

    .line 220
    .local v8, "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_2

    .line 221
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    const/16 v1, 0x41a

    if-lt v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isExternalEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    if-lt v0, v2, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    const/16 v1, 0x2328

    if-ge v0, v1, :cond_6

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-nez v0, :cond_2

    .line 224
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->THUMBNAIL_PREVIEW_TYPE_BUTTON_PADDING:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->THUMBNAIL_PREVIEW_TYPE_BUTTON_PADDING:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->PREVIEW_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->PREVIEW_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 235
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    if-nez v0, :cond_3

    .line 236
    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v5, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v6, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    move v2, v9

    move v3, v9

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_4

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-eq v0, v1, :cond_7

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 246
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton$2;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton$3;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 265
    return-void

    .line 217
    .end local v8    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v8

    .restart local v8    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    goto/16 :goto_0

    .line 228
    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    const/16 v1, 0x232d

    if-ne v0, v1, :cond_2

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-nez v0, :cond_2

    .line 230
    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->BUTTON_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->LINE_PADDING:I

    int-to-float v3, v3

    iget v4, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v5, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v6, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_1

    .line 243
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    goto :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 72
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 77
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->clear()V

    .line 82
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->clear()V

    .line 87
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-eqz v0, :cond_4

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->clear()V

    .line 92
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    .line 94
    :cond_4
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 95
    return-void
.end method

.method public onCameraSettingChanged(II)V
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->refreshButton()V

    goto :goto_0
.end method

.method protected onDraw()V
    .locals 4

    .prologue
    .line 205
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 206
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 209
    :cond_0
    return-void
.end method

.method public setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$FocusListener;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    .line 109
    if-nez p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 123
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton$1;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    goto :goto_0
.end method

.method public setMargin(I)V
    .locals 4
    .param p1, "margin"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getWidth()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getHeight()F

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->moveLayoutAbsolute(FF)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    .line 136
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getWidth()F

    move-result v0

    mul-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getHeight()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-super {p0, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 137
    return-void
.end method

.method public setMargin(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getWidth()F

    move-result v1

    int-to-float v2, p1

    add-float/2addr v1, v2

    int-to-float v2, p3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getHeight()F

    move-result v2

    int-to-float v3, p2

    add-float/2addr v2, v3

    int-to-float v3, p4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->moveLayoutAbsolute(FF)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getWidth()F

    move-result v0

    int-to-float v1, p1

    add-float/2addr v0, v1

    int-to-float v1, p3

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getHeight()F

    move-result v1

    int-to-float v2, p2

    add-float/2addr v1, v2

    int-to-float v2, p4

    add-float/2addr v1, v2

    invoke-super {p0, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 151
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setMute(Z)V

    .line 157
    :cond_0
    return-void
.end method

.method public setPaddings(I)V
    .locals 4
    .param p1, "padding"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getWidth()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getHeight()F

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->setSize(FF)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->moveLayoutAbsolute(FF)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getWidth()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getHeight()F

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setSize(FF)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getWidth()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getHeight()F

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setSize(FF)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    .line 172
    :cond_2
    return-void
.end method

.method public setPaddings(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getWidth()F

    move-result v1

    int-to-float v2, p1

    sub-float/2addr v1, v2

    int-to-float v2, p3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getHeight()F

    move-result v2

    int-to-float v3, p2

    sub-float/2addr v2, v3

    int-to-float v3, p4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->setSize(FF)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->moveLayoutAbsolute(FF)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getWidth()F

    move-result v1

    int-to-float v2, p1

    sub-float/2addr v1, v2

    int-to-float v2, p3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getHeight()F

    move-result v2

    int-to-float v3, p2

    sub-float/2addr v2, v3

    int-to-float v3, p4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setSize(FF)V

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getWidth()F

    move-result v1

    int-to-float v2, p1

    sub-float/2addr v1, v2

    int-to-float v2, p3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getHeight()F

    move-result v2

    int-to-float v3, p2

    sub-float/2addr v2, v3

    int-to-float v3, p4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setSize(FF)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    .line 187
    :cond_2
    return-void
.end method

.method public declared-synchronized setSize(FF)V
    .locals 3
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->THUMBNAIL_PREVIEW_TYPE_BUTTON_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->THUMBNAIL_PREVIEW_TYPE_BUTTON_PADDING:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->setSize(FF)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLSelectButton;->setSize(FF)V

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 200
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
