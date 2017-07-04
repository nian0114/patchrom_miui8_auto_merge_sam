.class public Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;
.super Lcom/sec/android/app/camera/widget/gl/Item;
.source "PictureSizeListItem.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;


# static fields
.field private static final CHECK_RADIO_IMAGE_LEFT_MARGIN_FOR_LOCALE_RTL:I

.field private static final LIST_ITEM_SUB_TEXT_WIDTH:F

.field private static final LIST_TYPE_BUTTON_IMAGE_SIDE_MARGIN:I

.field private static final LIST_TYPE_BUTTON_IMAGE_WIDTH:I

.field private static final LIST_TYPE_BUTTON_LEFT_PADDING:I

.field private static final LIST_TYPE_BUTTON_POS_X:I

.field private static final LIST_TYPE_BUTTON_TEXT_SIDE_MARGIN:I

.field private static final LIST_TYPE_DIVIDER_COLOR:I

.field private static final LIST_TYPE_DIVIDER_SIDE_MARGIN:I

.field private static final LIST_TYPE_DIVIDER_THICKNESS:I

.field private static final LIST_TYPE_SUB_TEXT_FONT_COLOR:I

.field private static final LIST_TYPE_SUB_TEXT_FONT_SIZE:F

.field private static final LIST_TYPE_TEXT_FONT_COLOR:I

.field private static final LIST_TYPE_TEXT_FONT_SIZE:F

.field private static final LIST_TYPE_TEXT_POS_X:I

.field private static final LIST_TYPE_TEXT_POS_Y:I

.field public static final ONLY_RATIO_TYPE:I = 0x0

.field public static final RATIO_SCALE_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PictureSizeListItem"


# instance fields
.field private mButton:Lcom/samsung/android/glview/GLButton;

.field private mCurrentType:I

.field private mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

.field private mDivider:Lcom/samsung/android/glview/GLLine;

.field private mHeight:F

.field private mSubText:Lcom/samsung/android/glview/GLText;

.field private mText:Lcom/samsung/android/glview/GLText;

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, 0x7f090103

    .line 44
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_BUTTON_IMAGE_SIDE_MARGIN:I

    .line 45
    const v0, 0x7f090104

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_BUTTON_TEXT_SIDE_MARGIN:I

    .line 46
    const v0, 0x7f090101

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_BUTTON_IMAGE_WIDTH:I

    .line 47
    const v0, 0x7f090102

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_BUTTON_POS_X:I

    .line 48
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_BUTTON_LEFT_PADDING:I

    .line 49
    const v0, 0x7f090106

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_TEXT_POS_X:I

    .line 50
    const v0, 0x7f090107

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_TEXT_POS_Y:I

    .line 51
    const v0, 0x7f090108

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_TEXT_FONT_SIZE:F

    .line 52
    const v0, 0x7f090105

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_SUB_TEXT_FONT_SIZE:F

    .line 53
    const v0, 0x7f0c000e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_TEXT_FONT_COLOR:I

    .line 54
    const v0, 0x7f0c001f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_SUB_TEXT_FONT_COLOR:I

    .line 55
    const v0, 0x7f0a0033

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_DIVIDER_THICKNESS:I

    .line 56
    const v0, 0x7f090327

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_DIVIDER_SIDE_MARGIN:I

    .line 57
    const v0, 0x7f0c0020

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_DIVIDER_COLOR:I

    .line 58
    const v0, 0x7f0900f2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->CHECK_RADIO_IMAGE_LEFT_MARGIN_FOR_LOCALE_RTL:I

    .line 59
    const v0, 0x7f090328

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_ITEM_SUB_TEXT_WIDTH:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "data"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p7, "command"    # Lcom/sec/android/app/camera/command/MenuCommand;
    .param p8, "listType"    # I

    .prologue
    .line 72
    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/widget/gl/Item;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mCurrentType:I

    .line 74
    iput p4, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mWidth:F

    .line 75
    iput p5, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mHeight:F

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mTitle:Ljava/lang/String;

    .line 78
    iput p8, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mCurrentType:I

    .line 79
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->init()V

    .line 80
    return-void
.end method


# virtual methods
.method protected clearContent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    .line 181
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 186
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mText:Lcom/samsung/android/glview/GLText;

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->clear()V

    .line 191
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mSubText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mSubText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mSubText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 196
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mSubText:Lcom/samsung/android/glview/GLText;

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    if-eqz v0, :cond_4

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLLine;->clear()V

    .line 201
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    .line 203
    :cond_4
    return-void
.end method

.method public getSelected()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->getSelected()Z

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 20

    .prologue
    .line 207
    new-instance v1, Lcom/samsung/android/glview/GLLine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_DIVIDER_SIDE_MARGIN:I

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mWidth:F

    sget v8, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_DIVIDER_SIDE_MARGIN:I

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float v5, v7, v8

    sget v7, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_DIVIDER_THICKNESS:I

    int-to-float v6, v7

    sget v7, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_DIVIDER_COLOR:I

    sget v8, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_DIVIDER_THICKNESS:I

    int-to-float v8, v8

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLLine;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLLine;->setBypassTouch(Z)V

    .line 211
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mCurrentType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 215
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 221
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/Util;->getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mContentDescription:Ljava/lang/String;

    .line 224
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mWidth:F

    sget v2, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_BUTTON_IMAGE_SIDE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_BUTTON_TEXT_SIDE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_ITEM_SUB_TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float v5, v1, v2

    .line 226
    .local v5, "textWidth":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mHeight:F

    .line 227
    .local v6, "textHeight":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mWidth:F

    sget v2, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_BUTTON_IMAGE_SIDE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_BUTTON_IMAGE_WIDTH:I

    int-to-float v2, v2

    sub-float v18, v1, v2

    .line 228
    .local v18, "imagePosX":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mHeight:F

    sget v2, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_BUTTON_IMAGE_WIDTH:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v19, v1, v2

    .line 230
    .local v19, "imagePosY":F
    new-instance v1, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v3

    if-eqz v3, :cond_5

    sub-float v3, v18, v5

    sget v4, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_BUTTON_TEXT_SIDE_MARGIN:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    :goto_1
    sget v4, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_TEXT_POS_Y:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mTitle:Ljava/lang/String;

    sget v8, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_TEXT_FONT_COLOR:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mText:Lcom/samsung/android/glview/GLText;

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x3

    :goto_2
    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 236
    new-instance v7, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    sget v1, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_BUTTON_POS_X:I

    int-to-float v9, v1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mWidth:F

    sget v2, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_BUTTON_IMAGE_SIDE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v11, v1, v2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mHeight:F

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const v1, 0x7f0c001e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v16

    sget-object v17, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v7 .. v17}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    .line 238
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->getCommandId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setObjectTag(Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTextVisibility(Z)V

    .line 242
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setHighlightVisibility(Z)V

    .line 243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setContentDescription(Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 248
    new-instance v7, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    sget v1, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_BUTTON_POS_X:I

    int-to-float v9, v1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mWidth:F

    sget v2, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_BUTTON_IMAGE_SIDE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v11, v1, v2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mHeight:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionSubString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    sget v1, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_SUB_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float v14, v1, v2

    sget v15, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_SUB_TEXT_FONT_COLOR:I

    const/16 v16, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mSubText:Lcom/samsung/android/glview/GLText;

    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mSubText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mSubText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mSubText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_3
    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 255
    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget v3, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_BUTTON_LEFT_PADDING:I

    int-to-float v3, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v4

    if-eqz v4, :cond_8

    .end local v18    # "imagePosX":F
    :goto_4
    add-float v3, v3, v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    move/from16 v0, v19

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    .line 256
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setBypassTouch(Z)V

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setOnSelectedChangeListener(Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mSubText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 262
    return-void

    .line 216
    .end local v5    # "textWidth":F
    .end local v6    # "textHeight":F
    .end local v19    # "imagePosY":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    if-eq v1, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 219
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_0

    .line 230
    .restart local v5    # "textWidth":F
    .restart local v6    # "textHeight":F
    .restart local v18    # "imagePosX":F
    .restart local v19    # "imagePosY":F
    :cond_5
    sget v3, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->LIST_TYPE_TEXT_POS_X:I

    int-to-float v3, v3

    goto/16 :goto_1

    .line 234
    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 253
    :cond_7
    const/4 v1, 0x3

    goto/16 :goto_3

    .line 255
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_4
.end method

.method public onSelectedChanged(Lcom/samsung/android/glview/GLView;Z)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "Selected"    # Z

    .prologue
    .line 89
    if-eqz p2, :cond_0

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setSubTitle(Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

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
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setAlpha(F)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    .line 104
    :cond_1
    return-void
.end method

.method public setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$KeyListener;

    .prologue
    const/4 v1, 0x0

    .line 108
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    if-nez v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 130
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 131
    return-void

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_5

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLText;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 138
    :cond_0
    return-void
.end method

.method public setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpId(I)V

    .line 144
    const/4 v0, 0x1

    .line 146
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

    .line 151
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    if-nez v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 173
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 174
    return-void

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_4

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 166
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_5

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLText;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 169
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    goto :goto_0
.end method
