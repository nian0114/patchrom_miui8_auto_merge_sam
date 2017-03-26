.class public Lcom/sec/android/app/camera/widget/gl/EffectItem;
.super Lcom/sec/android/app/camera/widget/gl/Item;
.source "EffectItem.java"


# static fields
.field private static final EFFECT_BADGE_IMAGE_WIDE_WIDTH:I

.field private static final EFFECT_BADGE_IMAGE_WIDTH:I

.field private static final EFFECT_SELECTED_IMAGE_WIDTH:I

.field private static final EFFECT_TYPE_BUTTON_HEIGHT:I

.field private static final EFFECT_TYPE_BUTTON_WIDTH:I

.field private static final EFFECT_TYPE_LINE_WIDTH:I

.field private static final EFFECT_TYPE_TEXT_HEIGHT:I

.field private static final EFFECT_TYPE_TEXT_SIZE:I

.field private static final EFFECT_TYPE_TEXT_WIDTH:I

.field private static final EFFECT_TYPE_TEXT_Y:I

.field private static final SELECT_BG_COLOR:I

.field private static final SELECT_BG_THICKNESS:I

.field private static final TAG:Ljava/lang/String; = "EffectItem"


# instance fields
.field private mBadge:Ljava/lang/String;

.field private mBadgeResId:I

.field private mEffectBadgeImage:Lcom/samsung/android/glview/GLImage;

.field private mSelectBG:Lcom/samsung/android/glview/GLImage;

.field private mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

.field private mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

.field private mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f0900ca

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    .line 38
    const v0, 0x7f0900c9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    .line 39
    const v0, 0x7f0900ff

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_LINE_WIDTH:I

    .line 40
    const v0, 0x7f0900fe

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_TEXT_Y:I

    .line 41
    const v0, 0x7f0900fc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_TEXT_WIDTH:I

    .line 42
    const v0, 0x7f0900f9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    .line 43
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isSWALanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0900fb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    sput v0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_TEXT_SIZE:I

    .line 45
    const v0, 0x7f0900f8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_BADGE_IMAGE_WIDTH:I

    .line 46
    const v0, 0x7f0900f7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_BADGE_IMAGE_WIDE_WIDTH:I

    .line 47
    const v0, 0x7f090326

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_SELECTED_IMAGE_WIDTH:I

    .line 48
    const v0, 0x7f0c0011

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->SELECT_BG_COLOR:I

    .line 49
    const v0, 0x7f0a002b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->SELECT_BG_THICKNESS:I

    return-void

    .line 43
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
    const/4 v0, 0x0

    .line 60
    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/widget/gl/Item;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    .line 54
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    .line 62
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mTitle:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mBadge:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectsTitle(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mTitle:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterVendorName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mBadge:Ljava/lang/String;

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->init()V

    .line 73
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected clearContent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->clear()V

    .line 193
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->clear()V

    .line 198
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 203
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    .line 208
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mEffectBadgeImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_4

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mEffectBadgeImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mEffectBadgeImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 213
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mEffectBadgeImage:Lcom/samsung/android/glview/GLImage;

    .line 215
    :cond_4
    return-void
.end method

.method public getBadgeResourceID(Ljava/lang/String;)I
    .locals 3
    .param p1, "badge"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 76
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 81
    :pswitch_0
    const v0, 0x7f0200b6

    goto :goto_0

    .line 79
    :sswitch_0
    const-string v2, "aillis"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    goto :goto_1

    :sswitch_1
    const-string v2, "Camera360"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "UCam"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "CandyCamera"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "B612"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    .line 83
    :pswitch_1
    const v0, 0x7f0200b8

    goto :goto_0

    .line 85
    :pswitch_2
    const v0, 0x7f0200ba

    goto :goto_0

    .line 87
    :pswitch_3
    const v0, 0x7f0200b9

    goto :goto_0

    .line 89
    :pswitch_4
    const v0, 0x7f0200b7

    goto :goto_0

    .line 79
    :sswitch_data_0
    .sparse-switch
        -0x547f8d2e -> :sswitch_0
        0x1ed155 -> :sswitch_4
        0x27ab3a -> :sswitch_2
        0x49bc8fca -> :sswitch_3
        0x630f14c8 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getBadgeWidth(Ljava/lang/String;)I
    .locals 1
    .param p1, "badge"    # Ljava/lang/String;

    .prologue
    .line 98
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    .line 101
    :cond_1
    const-string v0, "CandyCamera"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    sget v0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_BADGE_IMAGE_WIDE_WIDTH:I

    goto :goto_0

    .line 104
    :cond_2
    sget v0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_BADGE_IMAGE_WIDTH:I

    goto :goto_0
.end method

.method public getSelected()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getSelected()Z

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 13

    .prologue
    .line 219
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setTitle(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    sget v1, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setSize(FF)V

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setExtraDescription(Z)V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 225
    const/16 v0, 0x3e8

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterFullName(I)Ljava/lang/String;

    move-result-object v12

    .line 227
    .local v12, "objectTagName":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {v0, v12}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setObjectTag(Ljava/lang/String;)V

    .line 231
    .end local v12    # "objectTagName":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mBadge:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getBadgeResourceID(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mBadgeResId:I

    .line 234
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mBadgeResId:I

    if-eqz v0, :cond_0

    .line 235
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_TEXT_WIDTH:I

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mBadge:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getBadgeWidth(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mBadgeResId:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mEffectBadgeImage:Lcom/samsung/android/glview/GLImage;

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mEffectBadgeImage:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mBadge:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getBadgeResourceID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setBackground(I)Z

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mEffectBadgeImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mEffectBadgeImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mEffectBadgeImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mBadge:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getBadgeWidth(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mEffectBadgeImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mBadge:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getBadgeWidth(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mEffectBadgeImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mBadge:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getBadgeWidth(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mEffectBadgeImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 245
    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget v2, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_LINE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_LINE_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_TEXT_Y:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v8, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_TEXT_WIDTH:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_TEXT_SIZE:I

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v11

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v11

    mul-float/2addr v10, v11

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getCommandId()I

    move-result v11

    invoke-direct/range {v0 .. v11}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFFFFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setRotatable(Z)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setAlign(II)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setBypassTouch(Z)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setTextShadow(Z)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setLeftTop(IFF)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_LINE_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_LINE_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setLeftTop(IFF)V

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setLeftTop(IFF)V

    .line 257
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/widget/gl/EffectItem;->SELECT_BG_COLOR:I

    sget v7, Lcom/sec/android/app/camera/widget/gl/EffectItem;->SELECT_BG_THICKNESS:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    .line 258
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_SELECTED_IMAGE_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_SELECTED_IMAGE_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const v4, 0x7f0200bc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setClickable(Z)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mTitle:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800ff

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801f6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setTitle(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 278
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 282
    return-void

    .line 226
    :cond_1
    iget-object v12, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setObjectTag(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_2
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 117
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 130
    :goto_1
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->onOrientationChanged(I)V

    goto :goto_0

    .line 120
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    sget v1, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setSize(FF)V

    goto :goto_1

    .line 124
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailText:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;

    sget v1, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_BUTTON_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/EffectItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->setSize(FF)V

    goto :goto_1

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$KeyListener;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 145
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 146
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setMute(Z)V

    .line 153
    :cond_0
    return-void
.end method

.method public setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getButton()Lcom/samsung/android/glview/GLSelectButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusUpId(I)V

    .line 159
    const/4 v0, 0x1

    .line 161
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
    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectBG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLRectangle;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 171
    return-void
.end method

.method public setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$TouchListener;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 185
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 186
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    goto :goto_0
.end method
