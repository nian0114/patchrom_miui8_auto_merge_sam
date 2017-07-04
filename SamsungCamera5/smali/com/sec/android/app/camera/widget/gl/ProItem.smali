.class public Lcom/sec/android/app/camera/widget/gl/ProItem;
.super Lcom/sec/android/app/camera/widget/gl/Item;
.source "ProItem.java"


# static fields
.field public static final CUSTOM_TYPE:I = 0x2

.field public static final DEFAULT_TYPE:I = 0x0

.field public static final GLTEXT_TYPE:I = 0x1

.field private static final PRO_ITEM_TEXT_COLOR:I

.field private static final PRO_ITEM_TEXT_FONT_SIZE:I

.field private static final PRO_ITEM_TEXT_HEIGHT:I

.field private static final PRO_ITEM_TEXT_POS_Y:I

.field private static final PRO_ITEM_TEXT_SELECTED_COLOR:I

.field private static final PRO_ITEM_TEXT_STROKE_COLOR:I

.field private static final PRO_ITEM_TEXT_STROKE_WIDTH:I

.field private static final PRO_ITEM_TEXT_WIDTH:I

.field private static final PRO_ITEM_WIDTH:I

.field private static final PRO_ITEM_WIDTH_HEIGHT_DELTA:I

.field private static final TAG:Ljava/lang/String; = "ProItem"


# instance fields
.field private mButton:Lcom/samsung/android/glview/GLButton;

.field private mCommandId:I

.field private mText:Lcom/samsung/android/glview/GLText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f090167

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_WIDTH:I

    .line 38
    const v0, 0x7f0902d5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_WIDTH_HEIGHT_DELTA:I

    .line 39
    const v0, 0x7f090340

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_WIDTH:I

    .line 40
    const v0, 0x7f090164

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_HEIGHT:I

    .line 41
    const v0, 0x7f090165

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_POS_Y:I

    .line 42
    const v0, 0x7f090163

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_FONT_SIZE:I

    .line 43
    const v0, 0x7f0c0024

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_COLOR:I

    .line 44
    const v0, 0x7f0a0023

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_STROKE_WIDTH:I

    .line 45
    const v0, 0x7f0c0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_STROKE_COLOR:I

    .line 46
    const v0, 0x7f0c0034

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_SELECTED_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V
    .locals 8
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "width"    # F
    .param p6, "height"    # F
    .param p7, "data"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p8, "command"    # Lcom/sec/android/app/camera/command/MenuCommand;

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/widget/gl/Item;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    .line 55
    invoke-virtual {p7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCommandId:I

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mTitle:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->init()V

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->addButtonToDimController(Lcom/samsung/android/glview/GLView;)V

    .line 61
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeButtonFromDimController(Lcom/samsung/android/glview/GLView;)V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 70
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/widget/gl/Item;->clear()V

    .line 71
    return-void
.end method

.method protected clearContent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    .line 148
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLButton;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 153
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    .line 155
    :cond_1
    return-void
.end method

.method protected init()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 159
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v10

    .line 161
    .local v10, "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_WIDTH:I

    int-to-float v5, v3

    iget v6, v10, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v7, v10, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v8, v10, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    move v3, v2

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLButton;

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f020168

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setBackground(I)Z

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v10, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 167
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_WIDTH_HEIGHT_DELTA:I

    div-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_WIDTH_HEIGHT_DELTA:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_HEIGHT:I

    int-to-float v5, v5

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_FONT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v12, v12}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_FONT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setFontSize(F)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_STROKE_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 179
    return-void
.end method

.method public refreshButton(I)V
    .locals 6
    .param p1, "commandId"    # I

    .prologue
    .line 74
    invoke-static {p1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v0

    .line 76
    .local v0, "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLButton;

    iget v2, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v3, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    .line 79
    :cond_0
    return-void
.end method

.method public setDim(Z)V
    .locals 3
    .param p1, "dimmed"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mDimmed:Z

    .line 84
    if-eqz p1, :cond_2

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setDim(Z)V

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setDim(Z)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 106
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setSelected(Z)V

    .line 111
    if-eqz p1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_SELECTED_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 120
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setSelected(Z)V

    .line 121
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setSubTitle(Ljava/lang/String;)V

    .line 128
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p2}, Lcom/samsung/android/glview/GLButton;->setSubTitle(Ljava/lang/String;)V

    .line 135
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 141
    :cond_0
    return-void
.end method
