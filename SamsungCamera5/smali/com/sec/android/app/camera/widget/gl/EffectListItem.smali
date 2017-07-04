.class public Lcom/sec/android/app/camera/widget/gl/EffectListItem;
.super Lcom/sec/android/app/camera/widget/gl/Item;
.source "EffectListItem.java"


# static fields
.field private static final EFFECT_TYPE_BUTTON_HEIGHT:I

.field private static final EFFECT_TYPE_BUTTON_WIDTH:I

.field private static final EFFECT_TYPE_LINE_WIDTH:I

.field private static final EFFECT_TYPE_TEXT_HEIGHT:I

.field private static final EFFECT_TYPE_TEXT_SIZE:I

.field private static final EFFECT_TYPE_TEXT_WIDTH:I

.field private static final EFFECT_TYPE_TEXT_Y:I

.field private static final TAG:Ljava/lang/String; = "EffectListItem"


# instance fields
.field private mSelectBG:Lcom/samsung/android/glview/GLImage;

.field private mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

.field private mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f0902c9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    .line 37
    const v0, 0x7f0902c8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    .line 38
    const v0, 0x7f0900ff

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_LINE_WIDTH:I

    .line 39
    const v0, 0x7f0900fe

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_Y:I

    .line 40
    const v0, 0x7f0900fc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_WIDTH:I

    .line 41
    const v0, 0x7f0900f9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    .line 42
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isSWALanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0900fb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    sput v0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_SIZE:I

    return-void

    :cond_0
    const v0, 0x7f0900fa

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
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
    .line 50
    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/widget/gl/Item;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mTitle:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->init()V

    .line 54
    return-void
.end method


# virtual methods
.method protected clearContent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->clear()V

    .line 124
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->clear()V

    .line 129
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 134
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    .line 136
    :cond_2
    return-void
.end method

.method public getSelected()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getSelected()Z

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 13

    .prologue
    .line 140
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setTitle(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    sget v1, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setSize(FF)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setExtraDescription(Z)V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 146
    const/16 v0, 0x3e8

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterFullName(I)Ljava/lang/String;

    move-result-object v12

    .line 148
    .local v12, "objectTagName":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {v0, v12}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setObjectTag(Ljava/lang/String;)V

    .line 152
    .end local v12    # "objectTagName":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 154
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget v2, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_LINE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_LINE_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_Y:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v8, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_WIDTH:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_SIZE:I

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v11

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v11

    mul-float/2addr v10, v11

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->getCommandId()I

    move-result v11

    invoke-direct/range {v0 .. v11}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFFFFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setRotatable(Z)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setAlign(II)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setBypassTouch(Z)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setTextShadow(Z)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setLeftTop(IFF)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_LINE_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_LINE_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setLeftTop(IFF)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setLeftTop(IFF)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    sget v1, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setSize(FF)V

    .line 167
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0200ae

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x3

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setClickable(Z)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mTitle:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800ff

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801f6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 184
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 186
    return-void

    .line 147
    :cond_0
    iget-object v12, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setObjectTag(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_2
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->onOrientationChanged(I)V

    .line 64
    return-void
.end method

.method public setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$KeyListener;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 78
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 79
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setMute(Z)V

    .line 86
    :cond_0
    return-void
.end method

.method public setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getButton()Lcom/samsung/android/glview/GLSelectButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusUpId(I)V

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelectBGVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 102
    return-void
.end method

.method public setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$TouchListener;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 116
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 117
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    goto :goto_0
.end method
