.class public Lcom/sec/android/app/camera/widget/gl/FoodLensItem;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "FoodLensItem.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$FocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/FoodLensItem$FoodLensItemSelectListener;
    }
.end annotation


# static fields
.field private static final BUTTON_HEIGHT:I

.field private static final BUTTON_WIDTH:I

.field private static final FONT_SIZE:I

.field private static final LINE_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "FoodLensItem"

.field private static final TEXT_HEIGHT:I


# instance fields
.field private mButton:Lcom/samsung/android/glview/GLSelectButton;

.field private mButtonBG:Lcom/samsung/android/glview/GLImage;

.field private mButtonChecked:Lcom/samsung/android/glview/GLImage;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCommandId:I

.field private mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

.field protected mFoodLensItemSelectListener:Lcom/sec/android/app/camera/widget/gl/FoodLensItem$FoodLensItemSelectListener;

.field private mTitle:Lcom/samsung/android/glview/GLText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, 0x7f090076

    .line 38
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->BUTTON_WIDTH:I

    .line 39
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->BUTTON_HEIGHT:I

    .line 40
    const v0, 0x7f090074

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->TEXT_HEIGHT:I

    .line 41
    const v0, 0x7f090072

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->FONT_SIZE:I

    .line 42
    const v0, 0x7f090073

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->LINE_WIDTH:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;I)V
    .locals 6
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "data"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p7, "commandId"    # I

    .prologue
    .line 54
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mFoodLensItemSelectListener:Lcom/sec/android/app/camera/widget/gl/FoodLensItem$FoodLensItemSelectListener;

    .line 56
    iput p7, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mCommandId:I

    .line 57
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 58
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 61
    iput-object p6, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 63
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->initContent()V

    .line 64
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 73
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 74
    return-void
.end method

.method public getSelected()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->getSelected()Z

    move-result v0

    return v0
.end method

.method protected initContent()V
    .locals 10

    .prologue
    .line 182
    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->LINE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->LINE_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->BUTTON_HEIGHT:I

    int-to-float v5, v5

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setRotatable(Z)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 189
    const-string v6, ""

    .line 190
    .local v6, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 193
    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->LINE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->BUTTON_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->TEXT_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v7, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->FONT_SIZE:I

    int-to-float v7, v7

    const v8, 0x7f0c0011

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mTitle:Lcom/samsung/android/glview/GLText;

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mTitle:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mTitle:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mTitle:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mTitle:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 200
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020147

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButtonBG:Lcom/samsung/android/glview/GLImage;

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButtonBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButtonBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButtonBG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 205
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->LINE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->LINE_WIDTH:I

    int-to-float v3, v3

    const v4, 0x7f020148

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    sget v1, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->BUTTON_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->LINE_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->BUTTON_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->LINE_WIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->getSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCameraSettingChanged(II)V
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 91
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->refreshItem()V

    .line 94
    :cond_0
    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mFoodLensItemSelectListener:Lcom/sec/android/app/camera/widget/gl/FoodLensItem$FoodLensItemSelectListener;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/widget/gl/FoodLensItem$FoodLensItemSelectListener;->onFoodLensItemSelected(I)V

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public onFocusChanged(Lcom/samsung/android/glview/GLView;I)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "focusStatus"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    invoke-interface {v0, p0, p2}, Lcom/samsung/android/glview/GLView$FocusListener;->onFocusChanged(Lcom/samsung/android/glview/GLView;I)Z

    .line 106
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    invoke-interface {v1, p0, p2}, Lcom/samsung/android/glview/GLView$TouchListener;->onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 117
    :cond_0
    return v0
.end method

.method public refreshItem()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    const-string v0, "FoodLensItem"

    const-string v1, "SDH - refreshItem"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    goto :goto_0
.end method

.method public setBGVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 136
    return-void
.end method

.method public setDim(Z)V
    .locals 1
    .param p1, "dimmed"    # Z

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setDim(Z)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setBypassTouch(Z)V

    .line 142
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setDim(Z)V

    .line 143
    return-void
.end method

.method public setFoodLensItemSelectListener(Lcom/sec/android/app/camera/widget/gl/FoodLensItem$FoodLensItemSelectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/widget/gl/FoodLensItem$FoodLensItemSelectListener;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mFoodLensItemSelectListener:Lcom/sec/android/app/camera/widget/gl/FoodLensItem$FoodLensItemSelectListener;

    .line 147
    return-void
.end method

.method public setMargin(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mTitle:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mTitle:Lcom/samsung/android/glview/GLText;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButtonBG:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButtonBG:Lcom/samsung/android/glview/GLImage;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 166
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->getWidth()F

    move-result v0

    int-to-float v1, p1

    add-float/2addr v0, v1

    int-to-float v1, p3

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->getHeight()F

    move-result v1

    int-to-float v2, p2

    add-float/2addr v1, v2

    int-to-float v2, p4

    add-float/2addr v1, v2

    invoke-super {p0, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 167
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setMute(Z)V

    .line 173
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 82
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$TouchListener;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/FoodLensItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 178
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 179
    return-void
.end method
