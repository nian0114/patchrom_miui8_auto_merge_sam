.class public Lcom/sec/android/app/camera/widget/gl/CustomItem;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "CustomItem.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$KeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/CustomItem$CustomItemSelectListener;
    }
.end annotation


# static fields
.field public static final CHECKBOX_TYPE:I = 0x2

.field public static final DEFAULT_TYPE:I = 0x0

.field public static final IMAGE_TYPE:I = 0x1

.field private static final LIST_DIVIDER_HEIGHT:I

.field private static final LIST_TYPE_BUTTON_IMAGE_SIDE_MARGIN:I

.field private static final LIST_TYPE_BUTTON_IMAGE_WIDTH:I

.field private static final LIST_TYPE_BUTTON_TEXT_SIDE_MARGIN:I

.field private static final LIST_TYPE_CHECK_IMAGE_MARGIN:I

.field private static final LIST_TYPE_SIDE_PADDING:I

.field private static final LIST_TYPE_TEXT_FONT_COLOR:I

.field private static final LIST_TYPE_TEXT_FONT_SIZE:I

.field private static mCurrentType:I


# instance fields
.field private mButton:Lcom/samsung/android/glview/GLButton;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCheckedImage:Lcom/samsung/android/glview/GLImage;

.field private mCommandId:I

.field protected mCustomItemSelectListener:Lcom/sec/android/app/camera/widget/gl/CustomItem$CustomItemSelectListener;

.field private mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

.field private mHeight:F

.field private mIndex:I

.field private mListDivider:Lcom/samsung/android/glview/GLRectangle;

.field private mSelected:Z

.field private mText:Lcom/samsung/android/glview/GLText;

.field private mUncheckedImage:Lcom/samsung/android/glview/GLImage;

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f090311

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_SIDE_PADDING:I

    .line 42
    const v0, 0x7f090103

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_BUTTON_IMAGE_SIDE_MARGIN:I

    .line 43
    const v0, 0x7f09030e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_BUTTON_TEXT_SIDE_MARGIN:I

    .line 44
    const v0, 0x7f090101

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_BUTTON_IMAGE_WIDTH:I

    .line 45
    const v0, 0x7f09030b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    .line 46
    const v0, 0x7f0c000e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_TEXT_FONT_COLOR:I

    .line 47
    const v0, 0x7f09030d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_CHECK_IMAGE_MARGIN:I

    .line 48
    const v0, 0x7f090119

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_DIVIDER_HEIGHT:I

    .line 49
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCurrentType:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;III)V
    .locals 6
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "data"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p7, "index"    # I
    .param p8, "type"    # I
    .param p9, "commandId"    # I

    .prologue
    .line 66
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mSelected:Z

    .line 68
    iput p4, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mWidth:F

    .line 69
    iput p5, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mHeight:F

    .line 71
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 72
    iput-object p6, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 73
    iput p7, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mIndex:I

    .line 74
    sput p8, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCurrentType:I

    .line 75
    iput p9, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCommandId:I

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mTitle:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->init()V

    .line 79
    return-void
.end method


# virtual methods
.method public addDividerLine()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mWidth:F

    sget v3, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_DIVIDER_HEIGHT:I

    int-to-float v5, v3

    const v3, 0x7f0c001d

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mListDivider:Lcom/samsung/android/glview/GLRectangle;

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mListDivider:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 85
    return-void
.end method

.method public getButton()Lcom/samsung/android/glview/GLButton;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    .line 91
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCommandId()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCommandId:I

    return v0
.end method

.method public getSelected()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mSelected:Z

    return v0
.end method

.method protected init()V
    .locals 20

    .prologue
    .line 177
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mWidth:F

    sget v3, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_BUTTON_IMAGE_WIDTH:I

    int-to-float v3, v3

    sub-float v18, v2, v3

    .line 178
    .local v18, "imagePosX":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mHeight:F

    sget v3, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_BUTTON_IMAGE_WIDTH:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v19, v2, v3

    .line 180
    .local v19, "imagePosY":F
    sget v2, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCurrentType:I

    if-nez v2, :cond_3

    .line 181
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mWidth:F

    sget v3, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_BUTTON_TEXT_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v6, v2, v3

    .line 183
    .local v6, "textWidth":F
    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_BUTTON_TEXT_SIDE_MARGIN:I

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mHeight:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mTitle:Ljava/lang/String;

    sget v9, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v10

    mul-float/2addr v9, v10

    sget v10, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_TEXT_FONT_COLOR:I

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mText:Lcom/samsung/android/glview/GLText;

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    :goto_0
    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 188
    new-instance v7, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mWidth:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mHeight:F

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const v2, 0x7f0c001e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v16

    sget-object v17, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v7 .. v17}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCurrentType:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTextVisibility(Z)V

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setHighlightVisibility(Z)V

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getContentDescriptionId()I

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getContentDescriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/glview/GLButton;->mContentDescription:Ljava/lang/String;

    .line 200
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 275
    .end local v6    # "textWidth":F
    .end local v18    # "imagePosX":F
    :cond_1
    :goto_1
    return-void

    .line 186
    .restart local v6    # "textWidth":F
    .restart local v18    # "imagePosX":F
    :cond_2
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 202
    .end local v6    # "textWidth":F
    :cond_3
    sget v2, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCurrentType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 203
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mWidth:F

    sget v3, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_BUTTON_IMAGE_WIDTH:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_BUTTON_TEXT_SIDE_MARGIN:I

    int-to-float v3, v3

    sub-float v6, v2, v3

    .line 205
    .restart local v6    # "textWidth":F
    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mHeight:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mTitle:Ljava/lang/String;

    sget v9, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v10

    mul-float/2addr v9, v10

    sget v10, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_TEXT_FONT_COLOR:I

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mText:Lcom/samsung/android/glview/GLText;

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x3

    :goto_2
    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 209
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mWidth:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_BUTTON_TEXT_SIDE_MARGIN:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, v6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    .line 215
    :goto_3
    new-instance v7, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mWidth:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mHeight:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v15

    const v2, 0x7f0c001e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v16

    sget-object v17, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v7 .. v17}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCurrentType:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v18, 0x0

    .end local v18    # "imagePosX":F
    :cond_4
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTextVisibility(Z)V

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setHighlightVisibility(Z)V

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getContentDescriptionId()I

    move-result v2

    if-eqz v2, :cond_5

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getContentDescriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/glview/GLButton;->mContentDescription:Ljava/lang/String;

    .line 228
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_1

    .line 208
    .restart local v18    # "imagePosX":F
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 212
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mText:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_BUTTON_TEXT_SIDE_MARGIN:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    goto/16 :goto_3

    .line 229
    .end local v6    # "textWidth":F
    :cond_8
    sget v2, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCurrentType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 230
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mWidth:F

    sget v3, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_BUTTON_IMAGE_WIDTH:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_CHECK_IMAGE_MARGIN:I

    int-to-float v3, v3

    sub-float v6, v2, v3

    .line 232
    .restart local v6    # "textWidth":F
    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mHeight:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mTitle:Ljava/lang/String;

    sget v9, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v10

    mul-float/2addr v9, v10

    sget v10, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_TEXT_FONT_COLOR:I

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mText:Lcom/samsung/android/glview/GLText;

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x3

    :goto_4
    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 237
    new-instance v7, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mWidth:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mHeight:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v15

    const v2, 0x7f0c001e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v16

    sget-object v17, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v7 .. v17}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCurrentType:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v18, 0x0

    .end local v18    # "imagePosX":F
    :cond_9
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTextVisibility(Z)V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setHighlightVisibility(Z)V

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getContentDescriptionId()I

    move-result v2

    if-eqz v2, :cond_a

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getContentDescriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/glview/GLButton;->mContentDescription:Ljava/lang/String;

    .line 250
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 252
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f02028a

    move/from16 v0, v19

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f0c0036

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setTint(I)V

    .line 254
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f02028b

    move/from16 v0, v19

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mUncheckedImage:Lcom/samsung/android/glview/GLImage;

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mUncheckedImage:Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f0c0035

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setTint(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mUncheckedImage:Lcom/samsung/android/glview/GLImage;

    const v3, 0x3f0ccccd    # 0.55f

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 258
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mWidth:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_BUTTON_IMAGE_WIDTH:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_CHECK_IMAGE_MARGIN:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, v6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mWidth:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_BUTTON_IMAGE_WIDTH:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mUncheckedImage:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mWidth:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_BUTTON_IMAGE_WIDTH:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 268
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mUncheckedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mUncheckedImage:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_1

    .line 235
    .restart local v18    # "imagePosX":F
    :cond_b
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 263
    .end local v18    # "imagePosX":F
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mText:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_BUTTON_IMAGE_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/widget/gl/CustomItem;->LIST_TYPE_CHECK_IMAGE_MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mUncheckedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    goto :goto_5
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getTag()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mUncheckedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mSelected:Z

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCustomItemSelectListener:Lcom/sec/android/app/camera/widget/gl/CustomItem$CustomItemSelectListener;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCommandId:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/widget/gl/CustomItem$CustomItemSelectListener;->onCustomItemSelected(I)V

    .line 114
    return v2
.end method

.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 120
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 125
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 123
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 120
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 131
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 136
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 134
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 131
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public refreshView()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 140
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mSelected:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mUncheckedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mUncheckedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    .line 157
    :cond_1
    return-void
.end method

.method public setCustomItemSelectListener(Lcom/sec/android/app/camera/widget/gl/CustomItem$CustomItemSelectListener;)V
    .locals 0
    .param p1, "customItemSelectListener"    # Lcom/sec/android/app/camera/widget/gl/CustomItem$CustomItemSelectListener;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mCustomItemSelectListener:Lcom/sec/android/app/camera/widget/gl/CustomItem$CustomItemSelectListener;

    .line 161
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 167
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mSelected:Z

    .line 104
    return-void
.end method

.method public updateText(Ljava/lang/String;)V
    .locals 1
    .param p1, "updateText"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mTitle:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mButton:Lcom/samsung/android/glview/GLButton;

    iput-object p1, v0, Lcom/samsung/android/glview/GLButton;->mTitle:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/CustomItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 174
    return-void
.end method
