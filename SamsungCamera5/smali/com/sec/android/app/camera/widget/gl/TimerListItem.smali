.class public Lcom/sec/android/app/camera/widget/gl/TimerListItem;
.super Lcom/sec/android/app/camera/widget/gl/Item;
.source "TimerListItem.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;
.implements Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox$OnCheckedChangeListener;


# static fields
.field private static final CHECK_RADIO_IMAGE_LEFT_MARGIN_FOR_LOCALE_RTL:I

.field private static final LIST_TYPE_BUTTON_IMAGE_SIDE_MARGIN:I

.field private static final LIST_TYPE_BUTTON_IMAGE_WIDTH:I

.field private static final LIST_TYPE_BUTTON_LEFT_PADDING:I

.field private static final LIST_TYPE_BUTTON_POS_X:I

.field private static final LIST_TYPE_BUTTON_TEXT_SIDE_MARGIN:I

.field private static final LIST_TYPE_DIVIDER_COLOR:I

.field private static final LIST_TYPE_DIVIDER_SIDE_MARGIN:I

.field private static final LIST_TYPE_DIVIDER_THICKNESS:I

.field private static final LIST_TYPE_TEXT_FONT_COLOR:I

.field private static final LIST_TYPE_TEXT_FONT_SIZE:F

.field private static final LIST_TYPE_TEXT_POS_X:I

.field private static final LIST_TYPE_TEXT_POS_Y:I

.field private static final TAG:Ljava/lang/String; = "TimerListItem"


# instance fields
.field private mButton:Lcom/samsung/android/glview/GLButton;

.field private mDataCheckBox:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;

.field private mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

.field private mDivider:Lcom/samsung/android/glview/GLLine;

.field private mHeight:F

.field private mText:Lcom/samsung/android/glview/GLText;

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, 0x7f090103

    .line 40
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_BUTTON_IMAGE_SIDE_MARGIN:I

    .line 41
    const v0, 0x7f090104

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_BUTTON_TEXT_SIDE_MARGIN:I

    .line 42
    const v0, 0x7f090101

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_BUTTON_IMAGE_WIDTH:I

    .line 43
    const v0, 0x7f090102

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_BUTTON_POS_X:I

    .line 44
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_BUTTON_LEFT_PADDING:I

    .line 45
    const v0, 0x7f090106

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_TEXT_POS_X:I

    .line 46
    const v0, 0x7f090107

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_TEXT_POS_Y:I

    .line 47
    const v0, 0x7f090108

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_TEXT_FONT_SIZE:F

    .line 48
    const v0, 0x7f0c000e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_TEXT_FONT_COLOR:I

    .line 49
    const v0, 0x7f0900f2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->CHECK_RADIO_IMAGE_LEFT_MARGIN_FOR_LOCALE_RTL:I

    .line 51
    const v0, 0x7f0a0033

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_DIVIDER_THICKNESS:I

    .line 52
    const v0, 0x7f090327

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_DIVIDER_SIDE_MARGIN:I

    .line 53
    const v0, 0x7f0c0020

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_DIVIDER_COLOR:I

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
    .line 65
    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/widget/gl/Item;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    .line 67
    iput p4, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mWidth:F

    .line 68
    iput p5, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mHeight:F

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mTitle:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->init()V

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->addButtonToDimController(Lcom/samsung/android/glview/GLView;)V

    .line 74
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeButtonFromDimController(Lcom/samsung/android/glview/GLView;)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 83
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/widget/gl/Item;->clear()V

    .line 84
    return-void
.end method

.method protected clearContent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    .line 242
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 247
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mText:Lcom/samsung/android/glview/GLText;

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->clear()V

    .line 252
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataCheckBox:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataCheckBox:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataCheckBox:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->clear()V

    .line 257
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataCheckBox:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    if-eqz v0, :cond_4

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLLine;->clear()V

    .line 262
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    .line 264
    :cond_4
    return-void
.end method

.method public getSelected()Z
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataCheckBox:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->getSelected()Z

    move-result v0

    .line 91
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->getSelected()Z

    move-result v0

    goto :goto_0
.end method

.method protected init()V
    .locals 20

    .prologue
    .line 268
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mWidth:F

    sget v2, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_BUTTON_IMAGE_SIDE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_BUTTON_TEXT_SIDE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_BUTTON_IMAGE_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v5, v1, v2

    .line 269
    .local v5, "textWidth":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mHeight:F

    .line 270
    .local v6, "textHeight":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mWidth:F

    sget v2, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_BUTTON_IMAGE_SIDE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_BUTTON_IMAGE_WIDTH:I

    int-to-float v2, v2

    sub-float v18, v1, v2

    .line 271
    .local v18, "imagePosX":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mHeight:F

    sget v2, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_BUTTON_IMAGE_WIDTH:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v19, v1, v2

    .line 273
    .local v19, "imagePosY":F
    new-instance v1, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_TEXT_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_TEXT_POS_Y:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mTitle:Ljava/lang/String;

    sget v8, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_TEXT_FONT_COLOR:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mText:Lcom/samsung/android/glview/GLText;

    .line 274
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 275
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    :goto_0
    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 278
    new-instance v7, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    sget v1, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_BUTTON_POS_X:I

    int-to-float v9, v1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mWidth:F

    sget v2, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_BUTTON_IMAGE_SIDE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v11, v1, v2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mHeight:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v15

    const v1, 0x7f0c001e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v16

    sget-object v17, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v7 .. v17}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    .line 280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->getCommandId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setObjectTag(Ljava/lang/String;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    move/from16 v0, v19

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    .line 285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTextVisibility(Z)V

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setHighlightVisibility(Z)V

    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getContentDescriptionId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getContentDescriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/glview/GLButton;->mContentDescription:Ljava/lang/String;

    .line 293
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_4

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08009e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setText(Ljava/lang/String;)V

    .line 299
    new-instance v7, Lcom/samsung/android/glview/GLLine;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    sget v1, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_DIVIDER_SIDE_MARGIN:I

    int-to-float v9, v1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mWidth:F

    sget v2, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_DIVIDER_SIDE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v11, v1, v2

    sget v1, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_DIVIDER_THICKNESS:I

    int-to-float v12, v1

    sget v13, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_DIVIDER_COLOR:I

    sget v1, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_DIVIDER_THICKNESS:I

    int-to-float v14, v1

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/glview/GLLine;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    .line 301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLLine;->setBypassTouch(Z)V

    .line 303
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget v1, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_BUTTON_LEFT_PADDING:I

    int-to-float v4, v1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->CHECK_RADIO_IMAGE_LEFT_MARGIN_FOR_LOCALE_RTL:I

    int-to-float v1, v1

    add-float v1, v1, v18

    :goto_2
    add-float/2addr v1, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    move/from16 v0, v19

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataCheckBox:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;

    .line 305
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataCheckBox:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->setBypassTouch(Z)V

    .line 306
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataCheckBox:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->setOnCheckedChangeListener(Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox$OnCheckedChangeListener;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataCheckBox:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 316
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->addButtonToDimController(Lcom/samsung/android/glview/GLView;)V

    .line 317
    return-void

    .line 276
    :cond_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_2
    move/from16 v1, v18

    .line 282
    goto/16 :goto_1

    .line 303
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 310
    :cond_4
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget v1, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->LIST_TYPE_BUTTON_LEFT_PADDING:I

    int-to-float v4, v1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->CHECK_RADIO_IMAGE_LEFT_MARGIN_FOR_LOCALE_RTL:I

    int-to-float v1, v1

    add-float v1, v1, v18

    :goto_4
    add-float/2addr v1, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    move/from16 v0, v19

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setBypassTouch(Z)V

    .line 313
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setOnSelectedChangeListener(Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->addView(Lcom/samsung/android/glview/GLView;)V

    goto :goto_3

    .line 310
    :cond_5
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public onCheckedChanged(Lcom/samsung/android/glview/GLView;Z)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "checked"    # Z

    .prologue
    .line 97
    if-eqz p2, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setSubTitle(Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setSubTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSelectedChanged(Lcom/samsung/android/glview/GLView;Z)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "Selected"    # Z

    .prologue
    .line 106
    if-eqz p2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setSubTitle(Ljava/lang/String;)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setSubTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setAlpha(F)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    .line 121
    :cond_1
    return-void
.end method

.method public setDim(Z)V
    .locals 3
    .param p1, "dimmed"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 125
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setDim(Z)V

    .line 126
    if-eqz p1, :cond_4

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setDim(Z)V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setDim(Z)V

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataCheckBox:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataCheckBox:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->setDim(Z)V

    .line 153
    :cond_3
    :goto_0
    return-void

    .line 140
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_5

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 143
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_6

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setDim(Z)V

    .line 146
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    if-eqz v0, :cond_7

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setDim(Z)V

    .line 149
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataCheckBox:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataCheckBox:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->setDim(Z)V

    goto :goto_0
.end method

.method public setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$KeyListener;

    .prologue
    const/4 v1, 0x0

    .line 157
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    if-nez v0, :cond_4

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataCheckBox:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;

    if-eqz v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataCheckBox:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 185
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 186
    return-void

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_5

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 175
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_6

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLText;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 178
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    if-eqz v0, :cond_7

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 181
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataCheckBox:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;

    if-eqz v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataCheckBox:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 193
    :cond_0
    return-void
.end method

.method public setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpId(I)V

    .line 199
    const/4 v0, 0x1

    .line 201
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
    const/4 v1, 0x0

    .line 206
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    if-nez v0, :cond_4

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataCheckBox:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;

    if-eqz v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataCheckBox:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 234
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 235
    return-void

    .line 221
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_5

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 224
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_6

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLText;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 227
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    if-eqz v0, :cond_7

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 230
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataCheckBox:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;

    if-eqz v0, :cond_3

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TimerListItem;->mDataCheckBox:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    goto :goto_0
.end method
