.class public Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ItemEffectThumbnailButton.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# static fields
.field private static final EFFECT_TYPE_TEXT_HEIGHT:I

.field private static final PREVIEW_HEIGHT:I

.field private static final PREVIEW_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "ItemEffectThumbnailButton"


# instance fields
.field private mButton:Lcom/samsung/android/glview/GLSelectButton;

.field private mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mButtonPressed:Lcom/samsung/android/glview/GLRectangle;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCommandId:I

.field private mDownloadBG:Lcom/samsung/android/glview/GLRectangle;

.field private mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

.field private mTextBG:Lcom/samsung/android/glview/GLImage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f0900e1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_WIDTH:I

    .line 44
    const v0, 0x7f0900e0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_HEIGHT:I

    .line 45
    const v0, 0x7f0900f9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->EFFECT_TYPE_TEXT_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "commandId"    # I

    .prologue
    .line 58
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 60
    iput p4, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    .line 61
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 62
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->refreshButton()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLView$ClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    .prologue
    .line 40
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLView$ClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLSelectButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLRectangle;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonPressed:Lcom/samsung/android/glview/GLRectangle;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLView$TouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLView$TouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    return-object v0
.end method

.method private refreshButton()V
    .locals 10

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 302
    const/16 v0, 0x1f40

    invoke-static {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v9

    .line 303
    .local v9, "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterFullName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setObjectTag(Ljava/lang/String;)V

    .line 308
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_9

    .line 309
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    const/16 v1, 0x41a

    if-lt v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isExternalEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    const/16 v1, 0x1f40

    if-lt v0, v1, :cond_7

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    const/16 v1, 0x2328

    if-ge v0, v1, :cond_7

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-nez v0, :cond_2

    .line 312
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    .line 313
    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 339
    :cond_2
    :goto_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    const/16 v1, 0x232a

    if-ne v0, v1, :cond_a

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mDownloadBG:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_3

    .line 341
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0c000c

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mDownloadBG:Lcom/samsung/android/glview/GLRectangle;

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mDownloadBG:Lcom/samsung/android/glview/GLRectangle;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mDownloadBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(ILcom/samsung/android/glview/GLView;)V

    .line 365
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonPressed:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_4

    .line 366
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0c000c

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonPressed:Lcom/samsung/android/glview/GLRectangle;

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonPressed:Lcom/samsung/android/glview/GLRectangle;

    const v1, 0x3e23d70a    # 0.16f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonPressed:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonPressed:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setRotatable(Z)V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonPressed:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setRotateAnimation(Z)V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonPressed:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonPressed:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 375
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_5

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-eq v0, v1, :cond_c

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 382
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$2;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$3;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$4;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 451
    :cond_5
    return-void

    .line 305
    .end local v9    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v9

    .restart local v9    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    goto/16 :goto_0

    .line 317
    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    const/16 v1, 0x232a

    if-ne v0, v1, :cond_2

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-nez v0, :cond_2

    .line 319
    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v5, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v6, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setRotatable(Z)V

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setRotateAnimation(Z)V

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setCenterPivot(Z)V

    .line 323
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v0

    if-nez v0, :cond_8

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setDim(Z)V

    .line 326
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_1

    .line 330
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-nez v0, :cond_2

    .line 331
    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v5, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v6, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setRotatable(Z)V

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setRotateAnimation(Z)V

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setCenterPivot(Z)V

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_1

    .line 347
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mTextBG:Lcom/samsung/android/glview/GLImage;

    if-nez v0, :cond_3

    .line 348
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->EFFECT_TYPE_TEXT_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x7f0200b3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mTextBG:Lcom/samsung/android/glview/GLImage;

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mTextBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mTextBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mTextBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    .line 353
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_b

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mTextBG:Lcom/samsung/android/glview/GLImage;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->EFFECT_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 358
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mTextBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->EFFECT_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mTextBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->EFFECT_TYPE_TEXT_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mTextBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->EFFECT_TYPE_TEXT_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mTextBG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_2

    .line 356
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mTextBG:Lcom/samsung/android/glview/GLImage;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->EFFECT_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    goto :goto_4

    .line 379
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    goto/16 :goto_3
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 77
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 81
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->clear()V

    .line 85
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->clear()V

    .line 89
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mDownloadBG:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_4

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mDownloadBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    .line 93
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mDownloadBG:Lcom/samsung/android/glview/GLRectangle;

    .line 95
    :cond_4
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 96
    return-void
.end method

.method public getButton()Lcom/samsung/android/glview/GLSelectButton;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    return-object v0
.end method

.method public getCommandID()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    return v0
.end method

.method public getSelected()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->getSelected()Z

    move-result v0

    return v0
.end method

.method public onCameraSettingChanged(II)V
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->refreshButton()V

    goto :goto_0
.end method

.method protected onDraw()V
    .locals 4

    .prologue
    .line 289
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    :cond_0
    return-void

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 293
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mTextBG:Lcom/samsung/android/glview/GLImage;

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 130
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 142
    :goto_1
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    goto :goto_0

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mTextBG:Lcom/samsung/android/glview/GLImage;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    goto :goto_1

    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mTextBG:Lcom/samsung/android/glview/GLImage;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    goto :goto_1

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setExtraDescription(Z)V
    .locals 1
    .param p1, "hasExtraDescription"    # Z

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setExtraDescription(Z)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setExtraDescription(Z)V

    .line 151
    :cond_0
    return-void
.end method

.method public setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$FocusListener;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 157
    if-nez p1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$1;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    goto :goto_0
.end method

.method public setMargin(I)V
    .locals 4
    .param p1, "margin"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getWidth()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getHeight()F

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->moveLayoutAbsolute(FF)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getWidth()F

    move-result v0

    mul-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getHeight()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-super {p0, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 197
    return-void
.end method

.method public setMargin(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getWidth()F

    move-result v1

    int-to-float v2, p1

    add-float/2addr v1, v2

    int-to-float v2, p3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getHeight()F

    move-result v2

    int-to-float v3, p2

    add-float/2addr v2, v3

    int-to-float v3, p4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->moveLayoutAbsolute(FF)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getWidth()F

    move-result v0

    int-to-float v1, p1

    add-float/2addr v0, v1

    int-to-float v1, p3

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getHeight()F

    move-result v1

    int-to-float v2, p2

    add-float/2addr v1, v2

    int-to-float v2, p4

    add-float/2addr v1, v2

    invoke-super {p0, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 211
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setMute(Z)V

    .line 217
    :cond_0
    return-void
.end method

.method public setPaddings(I)V
    .locals 4
    .param p1, "padding"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getWidth()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getHeight()F

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->setSize(FF)V

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->moveLayoutAbsolute(FF)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getWidth()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getHeight()F

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setSize(FF)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    .line 229
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
    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getWidth()F

    move-result v1

    int-to-float v2, p1

    sub-float/2addr v1, v2

    int-to-float v2, p3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getHeight()F

    move-result v2

    int-to-float v3, p2

    sub-float/2addr v2, v3

    int-to-float v3, p4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->setSize(FF)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->moveLayoutAbsolute(FF)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getWidth()F

    move-result v1

    int-to-float v2, p1

    sub-float/2addr v1, v2

    int-to-float v2, p3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getHeight()F

    move-result v2

    int-to-float v3, p2

    sub-float/2addr v2, v3

    int-to-float v3, p4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setSize(FF)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    .line 241
    :cond_1
    return-void
.end method

.method public setResourceOffset(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getWidth()F

    move-result v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getHeight()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 245
    :cond_0
    const/4 v0, 0x0

    .line 251
    :goto_0
    return v0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLSelectButton;->setResourceOffset(FF)Z

    .line 251
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized setSize(FF)V
    .locals 3
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->setSize(FF)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setSize(FF)V

    .line 266
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 269
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 263
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLSelectButton;->setSize(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setSubTitle(Ljava/lang/String;)V

    .line 277
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setTitle(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    .line 285
    :cond_0
    return-void
.end method
