.class public Lcom/sec/android/app/camera/menu/EasyBaseMenu;
.super Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
.source "EasyBaseMenu.java"


# static fields
.field private static final BUTTON_TOUCH_AREA_OFFSET:I

.field private static final COVER_CAMERA_CLOSE:I = -0x1

.field private static final COVER_CLOSE_BUTTON_POS_X:I

.field private static final COVER_CLOSE_BUTTON_POS_Y:I

.field private static final COVER_FLASH_BUTTON_ITEM_HEIGHT:I

.field private static final COVER_FLASH_BUTTON_ITEM_WIDTH:I

.field private static final COVER_FLASH_BUTTON_POS_X:I

.field private static final COVER_FLASH_BUTTON_POS_Y:I

.field private static final COVER_RECORD_BUTTON_POS_X:I

.field private static final COVER_RECORD_BUTTON_POS_Y:I

.field private static final COVER_SHUTTER_BUTTON_POS_X:I

.field private static final COVER_SHUTTER_BUTTON_POS_Y:I

.field private static final COVER_THUMBNAIL_BUTTON_POS_X:I

.field private static final COVER_THUMBNAIL_BUTTON_POS_Y:I

.field private static final EASY_QUICK_SETTING_HEIGHT:I

.field private static final EASY_QUICK_SETTING_POS_X:I

.field private static final EASY_QUICK_SETTING_POS_Y:I

.field private static final EASY_QUICK_SETTING_WIDTH:I

.field public static final ITEM_HEIGHT:I

.field public static final ITEM_WIDTH:I

.field private static final RECORDING_BUTTON_DIAMETER:I

.field private static final RECORDING_BUTTON_POS_X:I

.field private static final RECORDING_BUTTON_POS_Y:I

.field private static final RECORDING_BUTTON_WIDTH:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SHOOTINGMODE_BUTTON_DIAMETER:I

.field private static final SHOOTINGMODE_BUTTON_POS_X:I

.field private static final SHOOTINGMODE_BUTTON_POS_Y:I

.field private static final SHOOTINGMODE_BUTTON_WIDTH:I

.field private static final SHUTTER_BUTTON_EXPAND_AREA:I

.field private static final SHUTTER_BUTTON_POS_X:I

.field private static final SHUTTER_BUTTON_POS_Y:I

.field private static final SHUTTER_BUTTON_PROGRESS_POS_X:I

.field private static final SHUTTER_BUTTON_PROGRESS_POS_Y:I

.field private static final SHUTTER_BUTTON_PROGRESS_WIDTH:I

.field private static final SHUTTER_BUTTON_WIDTH:I

.field private static final SNAPSHOT_BUTTON_POS_Y:I

.field private static final SNAPSHOT_BUTTON_WIDTH:I

.field private static final SWITCH_CAMERA_BUTTON_POS_X:I

.field private static final SWITCH_CAMERA_BUTTON_POS_Y:I

.field private static final SWITCH_CAMERA_BUTTON_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "EasyBaseMenu"

.field private static final THUMBNAIL_BUTTON_POS_X:I

.field private static final THUMBNAIL_BUTTON_POS_Y:I


# instance fields
.field private mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

.field private final mShutterSnapshotRatio:F

.field private final mSnapshotShutterRatio:F

.field private final translationDeltaY:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const v0, 0x7f090109

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->ITEM_WIDTH:I

    .line 62
    const v0, 0x7f090100

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->ITEM_HEIGHT:I

    .line 64
    const v0, 0x7f09031d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->EASY_QUICK_SETTING_POS_X:I

    .line 65
    const v0, 0x7f09031e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->EASY_QUICK_SETTING_POS_Y:I

    .line 66
    const v0, 0x7f09031f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->EASY_QUICK_SETTING_WIDTH:I

    .line 67
    const v0, 0x7f0901f7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->EASY_QUICK_SETTING_HEIGHT:I

    .line 68
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_WIDTH:I

    .line 69
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    .line 70
    const v0, 0x7f09020a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_POS_X:I

    .line 71
    const v0, 0x7f09020b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    .line 72
    const v0, 0x7f09020e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    .line 73
    const v0, 0x7f090209

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    .line 74
    const v0, 0x7f09020c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_PROGRESS_POS_X:I

    .line 75
    const v0, 0x7f09020d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_PROGRESS_POS_Y:I

    .line 76
    const v0, 0x7f09020f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:I

    .line 77
    const v0, 0x7f0901fe

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_POS_X:I

    .line 78
    const v0, 0x7f0901ff

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_POS_Y:I

    .line 79
    const v0, 0x7f090200

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_WIDTH:I

    .line 80
    const v0, 0x7f0902d7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_DIAMETER:I

    .line 81
    const v0, 0x7f090210

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SWITCH_CAMERA_BUTTON_POS_X:I

    .line 82
    const v0, 0x7f090211

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SWITCH_CAMERA_BUTTON_POS_Y:I

    .line 83
    const v0, 0x7f090212

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SWITCH_CAMERA_BUTTON_WIDTH:I

    .line 84
    const v0, 0x7f09001a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    .line 85
    const v0, 0x7f09001b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    .line 86
    const v0, 0x7f090202

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHOOTINGMODE_BUTTON_POS_Y:I

    .line 87
    const v0, 0x7f090203

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHOOTINGMODE_BUTTON_WIDTH:I

    .line 88
    sget v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    sget v1, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHOOTINGMODE_BUTTON_WIDTH:I

    const v2, 0x7f090254

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHOOTINGMODE_BUTTON_POS_X:I

    .line 89
    const v0, 0x7f090201

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHOOTINGMODE_BUTTON_DIAMETER:I

    .line 90
    const v0, 0x7f090213

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->BUTTON_TOUCH_AREA_OFFSET:I

    .line 91
    const v0, 0x7f09008d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_SHUTTER_BUTTON_POS_X:I

    .line 92
    sget v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_SHUTTER_BUTTON_POS_Y:I

    .line 93
    sget v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_SHUTTER_BUTTON_POS_X:I

    const v1, 0x7f0902c5

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_RECORD_BUTTON_POS_X:I

    .line 94
    const v0, 0x7f090088

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_RECORD_BUTTON_POS_Y:I

    .line 95
    const v0, 0x7f090082

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_CLOSE_BUTTON_POS_X:I

    .line 96
    const v0, 0x7f090083

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_CLOSE_BUTTON_POS_Y:I

    .line 97
    const v0, 0x7f090084

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_POS_X:I

    .line 98
    const v0, 0x7f090085

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_POS_Y:I

    .line 99
    const v0, 0x7f090301

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_ITEM_WIDTH:I

    .line 100
    const v0, 0x7f090300

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_ITEM_HEIGHT:I

    .line 101
    sget v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_SHUTTER_BUTTON_POS_X:I

    const v1, 0x7f090306

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_THUMBNAIL_BUTTON_POS_X:I

    .line 102
    const v0, 0x7f09008e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_THUMBNAIL_BUTTON_POS_Y:I

    .line 105
    const v0, 0x7f0901ab

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SNAPSHOT_BUTTON_POS_Y:I

    .line 106
    const v0, 0x7f0901ac

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SNAPSHOT_BUTTON_WIDTH:I

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 12
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p7, "zOrder"    # I

    .prologue
    .line 116
    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 108
    sget v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SNAPSHOT_BUTTON_POS_Y:I

    sget v1, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SNAPSHOT_BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->translationDeltaY:F

    .line 109
    sget v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SNAPSHOT_BUTTON_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterSnapshotRatio:F

    .line 110
    sget v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SNAPSHOT_BUTTON_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSnapshotShutterRatio:F

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->setPreviewTouchEnabled(Z)V

    .line 121
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_POS_X:I

    sget v3, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v5, v8

    int-to-float v5, v5

    const v6, 0x7f020107

    const v7, 0x7f020108

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801d1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 137
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_PROGRESS_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_PROGRESS_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:I

    int-to-float v5, v5

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setRotatable(Z)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setCenterPivot(Z)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(I)V

    .line 143
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02010e

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_DIAMETER:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 156
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SWITCH_CAMERA_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SWITCH_CAMERA_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020112

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_DIAMETER:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 169
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHOOTINGMODE_BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHOOTINGMODE_BUTTON_WIDTH:I

    int-to-float v5, v5

    const v8, 0x7f08017f

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->getCurrentLocaleModeTextSize()I

    move-result v8

    int-to-float v7, v8

    const v8, 0x7f0c0024

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightBOLDFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    const v2, 0x7f0a0023

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f0c0027

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 175
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHOOTINGMODE_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHOOTINGMODE_BUTTON_POS_Y:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHOOTINGMODE_BUTTON_DIAMETER:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 185
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    sget v3, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->BUTTON_TOUCH_AREA_OFFSET:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->BUTTON_TOUCH_AREA_OFFSET:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setTag(I)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setDim(Z)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->addButtonToDimController(Lcom/samsung/android/glview/GLView;)V

    .line 195
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 198
    new-instance v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->EASY_QUICK_SETTING_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->EASY_QUICK_SETTING_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->EASY_QUICK_SETTING_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->EASY_QUICK_SETTING_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 201
    new-instance v0, Lcom/sec/android/app/camera/menu/OverlayLayout;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    .line 202
    new-instance v0, Lcom/sec/android/app/camera/menu/Indicators;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/menu/Indicators;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getPreviewOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getShootingModeOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_SHUTTER_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_SHUTTER_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020107

    const v5, 0x7f020108

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801d1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 232
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_1

    .line 233
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_RECORD_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_RECORD_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02008c

    const v5, 0x7f02008d

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 249
    :cond_1
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 250
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020086

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080134

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 266
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v11

    .line 267
    .local v11, "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v6, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-direct {v6, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 268
    .local v6, "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 269
    .local v7, "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 270
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_CLOSE_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_CLOSE_BUTTON_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_ITEM_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_ITEM_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    .line 276
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Item;->setCenterPivot(Z)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Item;->setOrientation(I)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Item;->setRotatable(Z)V

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 281
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 285
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->showView(I)V

    .line 288
    .end local v6    # "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v7    # "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v11    # "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->makeBaseMenuVIAnimation()V

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->setAttachMode(Z)V

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 293
    new-instance v0, Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/CameraGestureListener;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    .line 294
    new-instance v10, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 295
    .local v10, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu$1;-><init>(Lcom/sec/android/app/camera/menu/EasyBaseMenu;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->registerFlingEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;)V

    .line 305
    .end local v10    # "handler":Landroid/os/Handler;
    :cond_4
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseMenu-loading**added["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v0, "Add View"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    .line 307
    return-void

    .line 255
    :cond_5
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_CLOSE_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_CLOSE_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020086

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    goto/16 :goto_0

    .line 273
    .restart local v6    # "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .restart local v7    # "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .restart local v11    # "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_6
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_ITEM_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_ITEM_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    goto/16 :goto_1

    .line 290
    .end local v6    # "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v7    # "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v11    # "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/QuickView;->clear()V

    .line 313
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->clear()V

    .line 317
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    .line 319
    :cond_1
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    .line 321
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->clear()V

    .line 322
    return-void
.end method

.method public clearSideQuickSetting()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->clearSideQuickSetting()V

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideShootingModeText()V

    .line 328
    return-void
.end method

.method public disableView(I)V
    .locals 5
    .param p1, "viewValue"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 332
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v2, :cond_0

    .line 333
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShutterButton:Z

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 336
    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 337
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableRecordingButton:Z

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 340
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-ne v0, v3, :cond_2

    .line 341
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableSwitchCameraButton:Z

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 344
    :cond_2
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 345
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableThumbnailButton:Z

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setDim(Z)V

    .line 349
    :cond_3
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 350
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShootingModeButton:Z

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 353
    :cond_4
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 354
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableSideQuickSetting:Z

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->setVisibility(I)V

    .line 357
    :cond_5
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 358
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableIndicators:Z

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(IZ)V

    .line 361
    :cond_6
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 362
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableOverlayLayout:Z

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 365
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 366
    return-void
.end method

.method public enableView(I)V
    .locals 4
    .param p1, "viewValue"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 370
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_0

    .line 371
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShutterButton:Z

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 374
    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 375
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableRecordingButton:Z

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 378
    :cond_1
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 379
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableSwitchCameraButton:Z

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 382
    :cond_2
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 383
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableThumbnailButton:Z

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 386
    :cond_3
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 387
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShootingModeButton:Z

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 390
    :cond_4
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 391
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableSideQuickSetting:Z

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->setVisibility(I)V

    .line 394
    :cond_5
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 395
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableIndicators:Z

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(IZ)V

    .line 398
    :cond_6
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 399
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableOverlayLayout:Z

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 402
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 403
    return-void
.end method

.method protected getAnchor(I)Lcom/samsung/android/glview/GLImage;
    .locals 1
    .param p1, "commandId"    # I

    .prologue
    .line 885
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndicators()Lcom/sec/android/app/camera/menu/Indicators;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    return-object v0
.end method

.method public hideCaptureProgressText()V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method public hideView(I)V
    .locals 8
    .param p1, "bitMarker"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 416
    const-string v0, "EasyBaseMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-nez v0, :cond_b

    .line 418
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableIndicators:Z

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(IZ)V

    .line 421
    :cond_0
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 424
    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v7, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_2

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setDim(Z)V

    .line 428
    :cond_2
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShootingModeButton:Z

    if-nez v0, :cond_3

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 431
    :cond_3
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableSideQuickSetting:Z

    if-nez v0, :cond_4

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->setVisibility(I)V

    .line 434
    :cond_4
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_6

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_5

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 438
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_6

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 442
    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingAnimation:Z

    if-eqz v0, :cond_8

    .line 443
    iput-boolean v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingAnimation:Z

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 494
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 495
    return-void

    .line 454
    :cond_8
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v5, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_9

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 457
    :cond_9
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v6, :cond_a

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_a

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 460
    :cond_a
    and-int/lit8 v0, p1, 0x4

    if-ne v0, v3, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableSwitchCameraButton:Z

    if-nez v0, :cond_7

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    goto :goto_0

    .line 465
    :cond_b
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableIndicators:Z

    if-nez v0, :cond_c

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(IZ)V

    .line 468
    :cond_c
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_d

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_d

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 471
    :cond_d
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v7, :cond_e

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_e

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 474
    :cond_e
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShootingModeButton:Z

    if-nez v0, :cond_f

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 477
    :cond_f
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_10

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableSideQuickSetting:Z

    if-nez v0, :cond_10

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->setVisibility(I)V

    .line 480
    :cond_10
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v5, :cond_11

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_11

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(IZ)V

    .line 485
    :cond_11
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v6, :cond_12

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_12

    .line 486
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_12

    .line 487
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 490
    :cond_12
    and-int/lit8 v0, p1, 0x4

    if-ne v0, v3, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableSwitchCameraButton:Z

    if-nez v0, :cond_7

    .line 491
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    goto/16 :goto_0
.end method

.method public isAnimationRunning()Z
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    return v0
.end method

.method protected makeBaseMenuVIAnimation()V
    .locals 10

    .prologue
    .line 890
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 891
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v1, 0xc8

    new-instance v2, Landroid/view/animation/interpolator/SineIn33;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineIn33;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 892
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    new-instance v5, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    const/16 v6, 0xc8

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 893
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 895
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 896
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v1, 0xc8

    new-instance v2, Landroid/view/animation/interpolator/SineIn33;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineIn33;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 897
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    new-instance v5, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    const/16 v6, 0xc8

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 898
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 900
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 901
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->translationDeltaY:F

    iget v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSnapshotShutterRatio:F

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    sget v5, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    new-instance v7, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    const/16 v8, 0x23a

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 903
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v1, 0x190

    new-instance v2, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 904
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSnapshotShutterRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSnapshotShutterRatio:F

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    new-instance v5, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    const/16 v6, 0x23a

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 906
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 908
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 909
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->translationDeltaY:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSnapshotShutterRatio:F

    div-float/2addr v2, v3

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    sget v5, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    new-instance v7, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    const/16 v8, 0x23a

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 911
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v1, 0x190

    new-instance v2, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 912
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSnapshotShutterRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSnapshotShutterRatio:F

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    new-instance v5, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    const/16 v6, 0x23a

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 914
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 916
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 917
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->translationDeltaY:F

    iget v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterSnapshotRatio:F

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    sget v5, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    new-instance v7, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    const/16 v8, 0x23a

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 919
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v1, 0x23a

    new-instance v2, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 920
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterSnapshotRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterSnapshotRatio:F

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    new-instance v5, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    const/16 v6, 0x23a

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 922
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 924
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 925
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->translationDeltaY:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterSnapshotRatio:F

    div-float/2addr v2, v3

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    sget v5, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    new-instance v7, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    const/16 v8, 0x23a

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 927
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v1, 0x23a

    new-instance v2, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 928
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterSnapshotRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterSnapshotRatio:F

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    new-instance v5, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    const/16 v6, 0x23a

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 930
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 931
    return-void
.end method

.method protected makeRecordingMenuVIAnimation()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/16 v8, 0x23a

    const/4 v9, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 935
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_0

    .line 936
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 937
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu$2;-><init>(Lcom/sec/android/app/camera/menu/EasyBaseMenu;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 955
    iget-object v10, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->translationDeltaY:F

    neg-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterSnapshotRatio:F

    div-float v3, v1, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    sget v5, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    new-instance v7, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v1, v0

    move v2, v0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 957
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v2, 0x1d6

    new-instance v3, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 958
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterSnapshotRatio:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterSnapshotRatio:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v7, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v2, v11

    move v4, v11

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 960
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v12}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 963
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_1

    .line 964
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 965
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu$3;-><init>(Lcom/sec/android/app/camera/menu/EasyBaseMenu;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 981
    iget-object v10, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->translationDeltaY:F

    neg-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSnapshotShutterRatio:F

    div-float v3, v1, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    sget v5, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    new-instance v7, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v1, v0

    move v2, v0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 983
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-static {v8, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 984
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSnapshotShutterRatio:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSnapshotShutterRatio:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v7, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v2, v11

    move v4, v11

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 986
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v12}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 989
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_2

    .line 990
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 991
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu$4;-><init>(Lcom/sec/android/app/camera/menu/EasyBaseMenu;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1007
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v2, 0x12c

    new-instance v3, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1008
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v7, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    const/16 v8, 0x12c

    move v2, v11

    move v3, v0

    move v4, v11

    move v5, v0

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1009
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v12}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1011
    :cond_2
    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 9
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/16 v8, 0x4e

    const/4 v7, 0x0

    const/16 v6, 0x1c21

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 508
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v3, :cond_1

    .line 509
    const-string v2, "EasyBaseMenu"

    const-string v3, "CameraContext is null."

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_0
    :goto_0
    return v1

    .line 513
    :cond_1
    if-nez p1, :cond_2

    .line 514
    const-string v2, "EasyBaseMenu"

    const-string v3, "View is null."

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 518
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->isShutterProgressWheelVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 519
    :cond_3
    const-string v2, "EasyBaseMenu"

    const-string v3, "Capture is now in progress."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 523
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v3

    if-nez v3, :cond_5

    .line 524
    const-string v2, "EasyBaseMenu"

    const-string v3, "Preview has not started yet."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 528
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 529
    const-string v2, "EasyBaseMenu"

    const-string v3, "Recording is now in progress."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 533
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isSwitchingCamera()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 534
    :cond_7
    const-string v2, "EasyBaseMenu"

    const-string v3, "Switch camera is now in progress."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 538
    :cond_8
    const-string v3, "EasyBaseMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    .line 582
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleCoverCameraClosed()V

    move v1, v2

    .line 583
    goto/16 :goto_0

    .line 542
    :sswitch_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 543
    .local v0, "backgroundAnimation":Landroid/view/animation/Animation;
    const v1, 0x7f0a0011

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 544
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 545
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v1

    invoke-interface {v1, v0, v7}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->showBlackOverlayWithAnimation(Landroid/view/animation/Animation;Lcom/samsung/android/glview/GLViewGroup;)V

    .line 546
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 547
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v3, 0x4f

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    .line 548
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v3, 0x4f

    invoke-interface {v1, v3, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    :goto_1
    move v1, v2

    .line 553
    goto/16 :goto_0

    .line 550
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    .line 551
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v8, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    goto :goto_1

    .line 555
    .end local v0    # "backgroundAnimation":Landroid/view/animation/Animation;
    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onSwitchCameraSelected()V

    goto/16 :goto_0

    .line 558
    :sswitch_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->waitForPictureSavingThread()V

    .line 560
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 561
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getUriListInSecureCamera()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 566
    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->noImage()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 567
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showNoImagePopup()V

    :goto_2
    move v1, v2

    .line 580
    goto/16 :goto_0

    .line 569
    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, 0x1d

    invoke-interface {v3, v4, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    .line 570
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 571
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCoverCameraGallery()V

    goto :goto_2

    .line 573
    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    if-eqz v3, :cond_d

    .line 574
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const-string v3, "quickview"

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/QuickView;->getType()I

    move-result v4

    invoke-interface {v1, v3, v7, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onLaunchGalleryForImage(Ljava/lang/String;Ljava/util/ArrayList;I)Z

    goto :goto_2

    .line 576
    :cond_d
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const-string v4, "quickview"

    invoke-interface {v3, v4, v7, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onLaunchGalleryForImage(Ljava/lang/String;Ljava/util/ArrayList;I)Z

    goto :goto_2

    .line 540
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x1d -> :sswitch_3
        0x24 -> :sswitch_2
    .end sparse-switch
.end method

.method public onFlingDirection(II)Z
    .locals 5
    .param p1, "direction"    # I
    .param p2, "orientation"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 592
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->isPressed(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->isShutterProgressWheelVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 629
    :goto_0
    return v1

    .line 596
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    .line 597
    goto :goto_0

    .line 600
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeMSGToStopTouchAE()V

    .line 601
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 603
    if-nez p1, :cond_7

    .line 604
    iget-boolean v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShootingModeButton:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    .line 605
    goto :goto_0

    .line 607
    :cond_5
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 608
    .local v0, "backgroundAnimation":Landroid/view/animation/Animation;
    const v2, 0x7f0a0011

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 609
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 610
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->showBlackOverlayWithAnimation(Landroid/view/animation/Animation;Lcom/samsung/android/glview/GLViewGroup;)V

    .line 611
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 612
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v3, 0x4f

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    .line 616
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v3, 0x2

    const/16 v4, 0x1c20

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    goto :goto_0

    .line 614
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v3, 0x4e

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto :goto_1

    .line 619
    .end local v0    # "backgroundAnimation":Landroid/view/animation/Animation;
    :cond_7
    if-ne p1, v1, :cond_9

    .line 620
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->waitForPictureSavingThread()V

    .line 621
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->noImage()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 622
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showNoImagePopup()V

    goto/16 :goto_0

    .line 624
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/QuickView;->launchGallery()V

    goto/16 :goto_0

    :cond_9
    move v1, v2

    .line 629
    goto/16 :goto_0
.end method

.method protected onHide()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1015
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFocusChangeListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FocusStateListener;)V

    .line 1017
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterEAM(Landroid/content/BroadcastReceiver;)V

    .line 1019
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getReview()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1023
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->isReviewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1024
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->hideReview(Z)V

    .line 1028
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1029
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1030
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1032
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->resetTranslate()V

    .line 1033
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setSize(FF)V

    .line 1034
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    .line 1036
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->resetTranslate()V

    .line 1037
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SWITCH_CAMERA_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SWITCH_CAMERA_BUTTON_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setSize(FF)V

    .line 1038
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    .line 1040
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->resetTranslate()V

    .line 1041
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setSize(FF)V

    .line 1042
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    .line 1044
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLButton;->setPressed(Z)V

    .line 1046
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->isVisible()I

    move-result v0

    if-nez v0, :cond_2

    .line 1047
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->endShutterProgressWheel()V

    .line 1049
    :cond_2
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1054
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1059
    return-void
.end method

.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x1b

    const/4 v0, 0x1

    .line 634
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_7

    .line 635
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 636
    :cond_1
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->KEYPAD:Z

    if-eqz v1, :cond_3

    .line 637
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_2

    .line 638
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 653
    :cond_2
    :goto_0
    return v0

    .line 641
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_2

    .line 642
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 646
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_7

    .line 648
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_2

    .line 649
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x82

    invoke-interface {v1, v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 653
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x1b

    const/4 v0, 0x1

    .line 658
    if-eqz p1, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_7

    .line 659
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 660
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_2

    .line 661
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->KEYPAD:Z

    if-eqz v1, :cond_3

    .line 662
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 675
    :cond_2
    :goto_0
    return v0

    .line 664
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 668
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_7

    .line 670
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_2

    .line 671
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x82

    invoke-interface {v1, v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 675
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onShow()V
    .locals 3

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFocusChangeListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FocusStateListener;)V

    .line 1065
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1066
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 1072
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1074
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-nez v0, :cond_1

    .line 1075
    new-instance v0, Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    .line 1077
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->registerEAM(Landroid/content/BroadcastReceiver;)V

    .line 1079
    :cond_2
    return-void

    .line 1068
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1084
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1089
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v4, 0x82

    const/16 v3, 0x1b

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 680
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->collapseMenu()V

    .line 682
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 738
    :cond_0
    :goto_0
    return v1

    .line 684
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p2}, Lcom/samsung/android/glview/GLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 692
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 696
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p2}, Lcom/samsung/android/glview/GLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 707
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 700
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p2}, Lcom/samsung/android/glview/GLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 710
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 713
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->shutterButtonCancelAction()V

    goto :goto_0

    .line 720
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_0

    .line 723
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 725
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 728
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 682
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x24 -> :sswitch_0
        0x41 -> :sswitch_2
    .end sparse-switch

    .line 705
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 723
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public registerEAM()V
    .locals 0

    .prologue
    .line 744
    return-void
.end method

.method public setBaseMenuAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 749
    return-void
.end method

.method public setCapturingProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 755
    return-void
.end method

.method public showCaptureProgressText()V
    .locals 0

    .prologue
    .line 760
    return-void
.end method

.method public showView(I)V
    .locals 8
    .param p1, "bitMarker"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v3, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 764
    const-string v0, "EasyBaseMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-nez v0, :cond_13

    .line 766
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 769
    :cond_0
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableIndicators:Z

    if-nez v0, :cond_1

    .line 770
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v4, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(IZ)V

    .line 772
    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v5, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_3

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 774
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 776
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 777
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 781
    :cond_3
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v6, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_6

    .line 782
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCallStatus()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 783
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 785
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 787
    :cond_6
    and-int/lit8 v0, p1, 0x4

    if-ne v0, v3, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableSwitchCameraButton:Z

    if-nez v0, :cond_7

    .line 788
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 790
    :cond_7
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v7, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_8

    .line 791
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->showThumbnailButton()V

    .line 793
    :cond_8
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShootingModeButton:Z

    if-nez v0, :cond_9

    .line 794
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 796
    :cond_9
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableSideQuickSetting:Z

    if-nez v0, :cond_a

    .line 797
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->setVisibility(I)V

    .line 799
    :cond_a
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_c

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_b

    .line 801
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 803
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_c

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 807
    :cond_c
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingAnimation:Z

    if-eqz v0, :cond_12

    .line 808
    iput-boolean v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingAnimation:Z

    .line 809
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_d

    .line 810
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 811
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 813
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_e

    .line 814
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 815
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 817
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_f

    .line 818
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 819
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 821
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 822
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 823
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 825
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 827
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 828
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 829
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 830
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_10

    .line 831
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 833
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_11

    .line 834
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 836
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_12

    .line 837
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 870
    :cond_12
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 871
    return-void

    .line 841
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->setVisibility(I)V

    .line 842
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 843
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 844
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 845
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 847
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_14

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableIndicators:Z

    if-nez v0, :cond_14

    .line 848
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(I)V

    .line 850
    :cond_14
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_15

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_15

    .line 851
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideShootingModeText()V

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 854
    :cond_15
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v7, :cond_16

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_16

    .line 855
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    sget v1, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_THUMBNAIL_BUTTON_POS_X:I

    sget v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_THUMBNAIL_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->moveBaseLayoutAbsolute(FFZ)V

    .line 856
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setRotatableForCoverCamera(Z)V

    .line 857
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->showThumbnailButton()V

    .line 859
    :cond_16
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v6, :cond_17

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_17

    .line 860
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_17

    .line 861
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 864
    :cond_17
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v5, :cond_12

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_12

    .line 865
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 866
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 867
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    invoke-virtual {v0, v4, v4}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(IZ)V

    goto/16 :goto_0
.end method

.method public unregisterEAM()V
    .locals 0

    .prologue
    .line 876
    return-void
.end method

.method public varargs updateSideQuickSetting([I)V
    .locals 1
    .param p1, "commandIds"    # [I

    .prologue
    .line 880
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->updateSideQuickSetting([I)V

    .line 881
    return-void
.end method
