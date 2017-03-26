.class public Lcom/sec/android/app/camera/widget/gl/ItemDataText;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ItemDataText.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# static fields
.field public static final BLUE_TEXT_COLOR:I

.field private static final DATA_FONT_SIZE:F

.field private static final TAG:Ljava/lang/String; = "ItemDataText"

.field public static final WHITE_TEXT_COLOR:I


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCommandId:I

.field private mShadow:Z

.field private mText:Lcom/samsung/android/glview/GLText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f0c000d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->BLUE_TEXT_COLOR:I

    .line 36
    const v0, 0x7f0c0011

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->WHITE_TEXT_COLOR:I

    .line 39
    const v0, 0x7f0a0001

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->DATA_FONT_SIZE:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V
    .locals 6
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "commandId"    # I

    .prologue
    .line 48
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mShadow:Z

    .line 50
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 51
    iput p6, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCommandId:I

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 55
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->refreshView()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFIZ)V
    .locals 6
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "commandId"    # I
    .param p7, "shadow"    # Z

    .prologue
    .line 59
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mShadow:Z

    .line 61
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 62
    iput p6, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCommandId:I

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 65
    iput-boolean p7, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mShadow:Z

    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->refreshView()V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "commandId"    # I

    .prologue
    .line 71
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mShadow:Z

    .line 73
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 74
    iput p4, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCommandId:I

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 78
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->refreshView()V

    .line 79
    return-void
.end method

.method private refreshView()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mText:Lcom/samsung/android/glview/GLText;

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->getView()Lcom/samsung/android/glview/GLView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->updateSize()V

    .line 205
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->refreshText()V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mParent:Lcom/samsung/android/glview/GLView;

    instance-of v0, v0, Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mParent:Lcom/samsung/android/glview/GLView;

    check-cast v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->updateSize()V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCommandId:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_2

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setDraggable(Z)V

    .line 214
    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 85
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 90
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mText:Lcom/samsung/android/glview/GLText;

    .line 93
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 94
    return-void
.end method

.method public getGLText()Lcom/samsung/android/glview/GLText;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mText:Lcom/samsung/android/glview/GLText;

    return-object v0
.end method

.method protected getView()Lcom/samsung/android/glview/GLView;
    .locals 14

    .prologue
    .line 155
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v10

    .line 156
    .local v10, "menuid":I
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v11

    .line 157
    .local v11, "modeid":I
    invoke-static {v10, v11}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v13

    .line 158
    .local v13, "selectedCommandId":I
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCommandId:I

    const/16 v1, 0x51

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    :goto_0
    invoke-static {v10, v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v13

    .line 163
    :cond_0
    invoke-static {v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v12

    .line 164
    .local v12, "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, "title":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->getHeight()F

    move-result v5

    sget v7, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->DATA_FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->BLUE_TEXT_COLOR:I

    iget-boolean v9, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mShadow:Z

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mText:Lcom/samsung/android/glview/GLText;

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mText:Lcom/samsung/android/glview/GLText;

    return-object v0

    .line 159
    .end local v6    # "title":Ljava/lang/String;
    .end local v12    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCameraSettingChanged(II)V
    .locals 9
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const v8, 0x7f08001d

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 102
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v3

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCommandId:I

    if-ne v3, v6, :cond_0

    .line 106
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    .line 107
    .local v1, "selectedCommandId":I
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCommandId:I

    const/16 v6, 0x51

    if-ne v3, v6, :cond_2

    .line 108
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_3

    move v3, v4

    :goto_1
    invoke-static {p1, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    .line 111
    :cond_2
    invoke-static {v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v0

    .line 113
    .local v0, "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    const/4 v2, 0x0

    .line 114
    .local v2, "title":Ljava/lang/String;
    const/16 v3, 0xfa6

    if-ne v1, v3, :cond_4

    .line 115
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v8, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 121
    :goto_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->updateText(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .end local v2    # "title":Ljava/lang/String;
    :cond_3
    move v3, v5

    .line 108
    goto :goto_1

    .line 116
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .restart local v2    # "title":Ljava/lang/String;
    :cond_4
    const/16 v3, 0xfa7

    if-ne v1, v3, :cond_5

    .line 117
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v7

    invoke-virtual {v3, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 119
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method protected refreshText()V
    .locals 11

    .prologue
    const v10, 0x7f08001d

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 171
    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCommandId:I

    invoke-static {v5}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    .line 172
    .local v0, "menuid":I
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v1

    .line 173
    .local v1, "modeid":I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v3

    .line 175
    .local v3, "selectedCommandId":I
    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCommandId:I

    const/16 v8, 0x51

    if-ne v5, v8, :cond_0

    .line 176
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v5

    const/4 v8, 0x3

    if-ne v5, v8, :cond_1

    move v5, v6

    :goto_0
    invoke-static {v0, v5}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v3

    .line 180
    :cond_0
    invoke-static {v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v2

    .line 182
    .local v2, "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    const/4 v4, 0x0

    .line 183
    .local v4, "title":Ljava/lang/String;
    const/16 v5, 0xfa6

    if-ne v3, v5, :cond_2

    .line 184
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v5, v10, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 190
    :goto_1
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->updateText(Ljava/lang/String;)V

    .line 191
    return-void

    .end local v2    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .end local v4    # "title":Ljava/lang/String;
    :cond_1
    move v5, v7

    .line 176
    goto :goto_0

    .line 185
    .restart local v2    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .restart local v4    # "title":Ljava/lang/String;
    :cond_2
    const/16 v5, 0xfa7

    if-ne v3, v5, :cond_3

    .line 186
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v9

    invoke-virtual {v5, v10, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 188
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public setAlign(II)V
    .locals 1
    .param p1, "hAlign"    # I
    .param p2, "vAlign"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 129
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 135
    :cond_0
    return-void
.end method

.method public setFontSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mText:Lcom/samsung/android/glview/GLText;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setFontSize(F)V

    .line 141
    :cond_0
    return-void
.end method

.method public setStroke(ZFI)V
    .locals 1
    .param p1, "visibility"    # Z
    .param p2, "width"    # F
    .param p3, "color"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 147
    :cond_0
    return-void
.end method

.method public setTextFont(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "type"    # Landroid/graphics/Typeface;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 152
    :cond_0
    return-void
.end method

.method protected updateText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "ItemDataText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataText;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 198
    :cond_0
    return-void
.end method
