.class public Lcom/sec/android/app/camera/widget/gl/DualEffectItem;
.super Lcom/sec/android/app/camera/widget/gl/Item;
.source "DualEffectItem.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# static fields
.field private static final EFFECT_TYPE_BUTTON_HEIGHT:I

.field private static final EFFECT_TYPE_BUTTON_WIDTH:I

.field private static final EFFECT_TYPE_TEXT_HEIGHT:I

.field private static final EFFECT_TYPE_TEXT_MARGIN:I

.field private static final EFFECT_TYPE_TEXT_SIZE:I

.field private static final EFFECT_TYPE_TEXT_WIDTH:I

.field private static final EFFECT_TYPE_TEXT_Y:I

.field private static final TAG:Ljava/lang/String; = "EffectItem"


# instance fields
.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCommandId:I

.field private mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

.field private mSelectedImage:Lcom/samsung/android/glview/GLImage;

.field private mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f090095

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    .line 38
    const v0, 0x7f090092

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    .line 39
    const v0, 0x7f0900f5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_TEXT_Y:I

    .line 40
    const v0, 0x7f0900f4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_TEXT_MARGIN:I

    .line 41
    const v0, 0x7f0900f6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_TEXT_WIDTH:I

    .line 42
    const v0, 0x7f0900f3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    .line 43
    const v0, 0x7f090325

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_TEXT_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "data"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p7, "command"    # Lcom/sec/android/app/camera/command/MenuCommand;

    .prologue
    .line 53
    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/widget/gl/Item;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mTitle:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mCommandId:I

    .line 58
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->init()V

    .line 62
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 71
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/widget/gl/Item;->clear()V

    .line 72
    return-void
.end method

.method protected clearContent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->clear()V

    .line 167
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->clear()V

    .line 172
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 177
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    .line 179
    :cond_2
    return-void
.end method

.method public getSelected()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->getSelected()Z

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 12

    .prologue
    .line 183
    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    sget v1, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setSize(FF)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setRotatable(Z)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setRotateAnimation(Z)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setCenterPivot(Z)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setObjectTag(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setExtraDescription(Z)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 194
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_TEXT_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v8, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_TEXT_WIDTH:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_TEXT_SIZE:I

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v11

    mul-float/2addr v10, v11

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->getCommandId()I

    move-result v11

    invoke-direct/range {v0 .. v11}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFFFFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setRotatable(Z)V

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setAlign(II)V

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setBypassTouch(Z)V

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setTextShadow(Z)V

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_TEXT_MARGIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setLeftTop(IFF)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setLeftTop(IFF)V

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_TEXT_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setLeftTop(IFF)V

    .line 206
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    sget v1, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setSize(FF)V

    .line 211
    :goto_0
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_TEXT_MARGIN:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const v4, 0x7f02009a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_TEXT_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_TEXT_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_TEXT_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 223
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->refreshItem()V

    .line 224
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    sget v1, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setSize(FF)V

    goto :goto_0
.end method

.method public onCameraSettingChanged(II)V
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 81
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->refreshItem()V

    .line 84
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 90
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 103
    :goto_1
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->onOrientationChanged(I)V

    goto :goto_0

    .line 93
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    sget v1, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setSize(FF)V

    goto :goto_1

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    sget v1, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setSize(FF)V

    goto :goto_1

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public refreshItem()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    goto :goto_0
.end method

.method public setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$KeyListener;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 128
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 129
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setMute(Z)V

    .line 136
    :cond_0
    return-void
.end method

.method public setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusUpId(I)V

    .line 142
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$TouchListener;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 159
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 160
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->mSelectButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    goto :goto_0
.end method
