.class public Lcom/sec/android/app/camera/menu/BaseMenu;
.super Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
.source "BaseMenu.java"


# static fields
.field private static final BUTTON_TOUCH_AREA_OFFSET:I

.field private static final CAPTURE_PROGRESS_TEXT_BOTTOM_POS_X:F

.field private static final CAPTURE_PROGRESS_TEXT_BOTTOM_POS_Y:F

.field private static final CAPTURE_PROGRESS_TEXT_HEIGHT:F

.field private static final CAPTURE_PROGRESS_TEXT_SIZE:F

.field private static final CAPTURE_PROGRESS_TEXT_WIDTH:F

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

.field public static final ITEM_HEIGHT:I

.field public static final ITEM_WIDTH:I

.field private static final KEYBOARD_COVER_CAPTURE_PROGRESS_TEXT_BOTTOM_POS_X:F

.field private static final KEYBOARD_COVER_OFFSET_POS_X:I

.field private static final KEYBOARD_COVER_RECORDING_BUTTON_POS_X:I

.field private static final KEYBOARD_COVER_SHUTTER_BUTTON_POS_X:I

.field private static final KEYBOARD_COVER_SIDEMENU_THUMBNAIL_BUTTON_POS_X:I

.field private static final KEYBOARD_COVER_SWITCH_CAMERA_BUTTON_POS_X:I

.field private static final RECORDING_BUTTON_DIAMETER:I

.field private static final RECORDING_BUTTON_POS_X:I

.field private static final RECORDING_BUTTON_POS_Y:I

.field private static final RECORDING_BUTTON_WIDTH:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SETTING_BUTTON_POS_X:I

.field private static final SETTING_BUTTON_POS_Y:I

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

.field private static final SIDE_QUICK_SETTING_HEIGHT:I

.field private static final SIDE_QUICK_SETTING_POS_X:I

.field private static final SIDE_QUICK_SETTING_POS_Y:I

.field private static final SIDE_QUICK_SETTING_WIDTH:I

.field private static final SNAPSHOT_BUTTON_POS_Y:I

.field private static final SNAPSHOT_BUTTON_WIDTH:I

.field private static final SWITCH_CAMERA_BUTTON_POS_X:I

.field private static final SWITCH_CAMERA_BUTTON_POS_Y:I

.field private static final SWITCH_CAMERA_BUTTON_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "BaseMenu"

.field private static final THUMBNAIL_BUTTON_POS_X:I

.field private static final THUMBNAIL_BUTTON_POS_Y:I


# instance fields
.field private final SIDE_QUICK_SETTING_BUTTON_ANIMATION_DURATION:I

.field private mCaptureProgressText:Lcom/samsung/android/glview/GLText;

.field private mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

.field private mQuickMenuButtonCloseAnimation:Landroid/view/animation/Animation;

.field private mQuickMenuButtonOpenAnimation:Landroid/view/animation/Animation;

.field private final mShutterSnapshotRatio:F

.field private mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

.field private final mSnapshotShutterRatio:F

.field private final translationDeltaY:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const v0, 0x7f090109

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->ITEM_WIDTH:I

    .line 65
    const v0, 0x7f090100

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->ITEM_HEIGHT:I

    .line 67
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    .line 68
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    .line 69
    const v0, 0x7f09020a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_POS_X:I

    .line 70
    const v0, 0x7f09020b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_POS_Y:I

    .line 71
    const v0, 0x7f09020e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:I

    .line 72
    const v0, 0x7f090209

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    .line 73
    const v0, 0x7f09020c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_PROGRESS_POS_X:I

    .line 74
    const v0, 0x7f09020d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_PROGRESS_POS_Y:I

    .line 75
    const v0, 0x7f09020f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:I

    .line 76
    const v0, 0x7f0901fe

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_POS_X:I

    .line 77
    const v0, 0x7f0901ff

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_POS_Y:I

    .line 78
    const v0, 0x7f090200

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_WIDTH:I

    .line 79
    const v0, 0x7f0902d7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_DIAMETER:I

    .line 80
    const v0, 0x7f090210

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SWITCH_CAMERA_BUTTON_POS_X:I

    .line 81
    const v0, 0x7f090211

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SWITCH_CAMERA_BUTTON_POS_Y:I

    .line 82
    const v0, 0x7f090212

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SWITCH_CAMERA_BUTTON_WIDTH:I

    .line 83
    const v0, 0x7f09001a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    .line 84
    const v0, 0x7f09001b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    .line 85
    const v0, 0x7f090202

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHOOTINGMODE_BUTTON_POS_Y:I

    .line 86
    const v0, 0x7f090203

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHOOTINGMODE_BUTTON_WIDTH:I

    .line 87
    sget v0, Lcom/sec/android/app/camera/menu/BaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->SHOOTINGMODE_BUTTON_WIDTH:I

    const v2, 0x7f090254

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHOOTINGMODE_BUTTON_POS_X:I

    .line 88
    const v0, 0x7f090201

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHOOTINGMODE_BUTTON_DIAMETER:I

    .line 89
    const v0, 0x7f090213

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->BUTTON_TOUCH_AREA_OFFSET:I

    .line 90
    const v0, 0x7f0901fa

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SIDE_QUICK_SETTING_POS_X:I

    .line 91
    const v0, 0x7f0901fb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SIDE_QUICK_SETTING_POS_Y:I

    .line 92
    const v0, 0x7f0901fc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SIDE_QUICK_SETTING_WIDTH:I

    .line 93
    const v0, 0x7f0901f7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SIDE_QUICK_SETTING_HEIGHT:I

    .line 94
    sget v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SIDE_QUICK_SETTING_POS_X:I

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SETTING_BUTTON_POS_X:I

    .line 95
    sget v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SIDE_QUICK_SETTING_POS_Y:I

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SETTING_BUTTON_POS_Y:I

    .line 96
    const v0, 0x7f09003a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_WIDTH:F

    .line 97
    const v0, 0x7f090037

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_HEIGHT:F

    .line 98
    sget v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    const v1, 0x7f090036

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_BOTTOM_POS_X:F

    .line 99
    const v0, 0x7f090038

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_BOTTOM_POS_Y:F

    .line 100
    const v0, 0x7f090039

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_SIZE:F

    .line 101
    const v0, 0x7f09008d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_SHUTTER_BUTTON_POS_X:I

    .line 102
    sget v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_SHUTTER_BUTTON_POS_Y:I

    .line 103
    sget v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_SHUTTER_BUTTON_POS_X:I

    const v1, 0x7f0902c5

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_RECORD_BUTTON_POS_X:I

    .line 104
    const v0, 0x7f090088

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_RECORD_BUTTON_POS_Y:I

    .line 105
    const v0, 0x7f090082

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_CLOSE_BUTTON_POS_X:I

    .line 106
    const v0, 0x7f090083

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_CLOSE_BUTTON_POS_Y:I

    .line 107
    const v0, 0x7f090084

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_POS_X:I

    .line 108
    const v0, 0x7f090085

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_POS_Y:I

    .line 109
    const v0, 0x7f090301

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_ITEM_WIDTH:I

    .line 110
    const v0, 0x7f090300

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_ITEM_HEIGHT:I

    .line 111
    sget v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_SHUTTER_BUTTON_POS_X:I

    const v1, 0x7f090306

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_THUMBNAIL_BUTTON_POS_X:I

    .line 112
    const v0, 0x7f09008e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_THUMBNAIL_BUTTON_POS_Y:I

    .line 115
    const v0, 0x7f09010a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->KEYBOARD_COVER_OFFSET_POS_X:I

    .line 116
    sget v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->KEYBOARD_COVER_OFFSET_POS_X:I

    sub-int/2addr v0, v1

    const v1, 0x7f09010f

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    const v1, 0x7f090329

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->KEYBOARD_COVER_SHUTTER_BUTTON_POS_X:I

    .line 118
    sget v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->KEYBOARD_COVER_OFFSET_POS_X:I

    sub-int/2addr v0, v1

    const v1, 0x7f09010d

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->KEYBOARD_COVER_RECORDING_BUTTON_POS_X:I

    .line 120
    sget v0, Lcom/sec/android/app/camera/menu/BaseMenu;->KEYBOARD_COVER_RECORDING_BUTTON_POS_X:I

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->KEYBOARD_COVER_SWITCH_CAMERA_BUTTON_POS_X:I

    .line 121
    sget v0, Lcom/sec/android/app/camera/menu/BaseMenu;->KEYBOARD_COVER_RECORDING_BUTTON_POS_X:I

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_WIDTH:I

    const v2, 0x7f090255

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->KEYBOARD_COVER_SIDEMENU_THUMBNAIL_BUTTON_POS_X:I

    .line 123
    sget v0, Lcom/sec/android/app/camera/menu/BaseMenu;->KEYBOARD_COVER_SIDEMENU_THUMBNAIL_BUTTON_POS_X:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_BOTTOM_POS_Y:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->KEYBOARD_COVER_CAPTURE_PROGRESS_TEXT_BOTTOM_POS_X:F

    .line 126
    const v0, 0x7f0901ab

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SNAPSHOT_BUTTON_POS_Y:I

    .line 127
    const v0, 0x7f0901ac

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SNAPSHOT_BUTTON_WIDTH:I

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
    .line 145
    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 129
    sget v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SNAPSHOT_BUTTON_POS_Y:I

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_POS_Y:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->SNAPSHOT_BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->translationDeltaY:F

    .line 130
    sget v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->SNAPSHOT_BUTTON_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterSnapshotRatio:F

    .line 131
    sget v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SNAPSHOT_BUTTON_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSnapshotShutterRatio:F

    .line 133
    const v0, 0x7f0a0017

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SIDE_QUICK_SETTING_BUTTON_ANIMATION_DURATION:I

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->setPreviewTouchEnabled(Z)V

    .line 150
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_POS_X:I

    sget v3, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v5, v8

    int-to-float v5, v5

    const v6, 0x7f020107

    const v7, 0x7f020108

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801d1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 166
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_PROGRESS_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_PROGRESS_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:I

    int-to-float v5, v5

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setRotatable(Z)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setCenterPivot(Z)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(I)V

    .line 172
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02010e

    const v5, 0x7f02010f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_DIAMETER:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 185
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->SWITCH_CAMERA_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/BaseMenu;->SWITCH_CAMERA_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020112

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setContentDescription(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_DIAMETER:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 198
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/BaseMenu;->SHOOTINGMODE_BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/BaseMenu;->SHOOTINGMODE_BUTTON_WIDTH:I

    int-to-float v5, v5

    const v8, 0x7f08017f

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->getCurrentLocaleModeTextSize()I

    move-result v8

    int-to-float v7, v8

    const v8, 0x7f0c0024

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightBOLDFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    const v2, 0x7f0a0023

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f0c0027

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 204
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->SHOOTINGMODE_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/BaseMenu;->SHOOTINGMODE_BUTTON_POS_Y:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->SHOOTINGMODE_BUTTON_DIAMETER:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 216
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    sget v3, Lcom/sec/android/app/camera/menu/BaseMenu;->BUTTON_TOUCH_AREA_OFFSET:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/BaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/menu/BaseMenu;->BUTTON_TOUCH_AREA_OFFSET:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setTag(I)V

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setDim(Z)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->addButtonToDimController(Lcom/samsung/android/glview/GLView;)V

    .line 227
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 228
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 231
    new-instance v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->SIDE_QUICK_SETTING_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/BaseMenu;->SIDE_QUICK_SETTING_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/BaseMenu;->SIDE_QUICK_SETTING_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/BaseMenu;->SIDE_QUICK_SETTING_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/menu/SideQuickSetting;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/menu/MenuResourceDepot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    .line 234
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FIXED_TYPE_SIDE_QUICK_SETTING_MENU:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->SETTING_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/BaseMenu;->SETTING_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02019f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 239
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->makeQuickMenuButtonAnimation()V

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080134

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0801a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 247
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->setVisibility(I)V

    .line 258
    :goto_1
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_BOTTOM_POS_X:F

    sget v3, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_BOTTOM_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_HEIGHT:F

    const-string v6, ""

    sget v8, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_SIZE:F

    iget-object v9, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float v7, v8, v9

    const v8, 0x7f0c0024

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x7f0c0022

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 269
    new-instance v0, Lcom/sec/android/app/camera/menu/OverlayLayout;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/interfaces/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    .line 270
    new-instance v0, Lcom/sec/android/app/camera/menu/Indicators;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/menu/Indicators;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getPreviewOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 275
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FIXED_TYPE_SIDE_QUICK_SETTING_MENU:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getShootingModeOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 291
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_SHUTTER_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_SHUTTER_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020107

    const v5, 0x7f020108

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801d1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 306
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_3

    .line 307
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_RECORD_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_RECORD_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02008c

    const v5, 0x7f02008d

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 323
    :cond_3
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 324
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020086

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 334
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080134

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 340
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v11

    .line 341
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

    .line 342
    .local v6, "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 343
    .local v7, "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 344
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_CLOSE_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_CLOSE_BUTTON_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_ITEM_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_ITEM_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    .line 350
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Item;->setCenterPivot(Z)V

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Item;->setOrientation(I)V

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Item;->setRotatable(Z)V

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 355
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_4

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 357
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 359
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->showView(I)V

    .line 380
    .end local v6    # "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v7    # "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v11    # "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->makeBaseMenuVIAnimation()V

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->setAttachMode(Z)V

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 385
    new-instance v0, Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/CameraGestureListener;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    .line 386
    new-instance v10, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 387
    .local v10, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/sec/android/app/camera/menu/BaseMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/BaseMenu$1;-><init>(Lcom/sec/android/app/camera/menu/BaseMenu;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->registerFlingEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;)V

    .line 399
    .end local v10    # "handler":Landroid/os/Handler;
    :cond_6
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

    .line 400
    const-string v0, "Add View"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    .line 401
    return-void

    .line 244
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080189

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0801a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->setVisibility(I)V

    goto/16 :goto_1

    .line 329
    :cond_9
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_CLOSE_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_CLOSE_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020086

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    goto/16 :goto_2

    .line 347
    .restart local v6    # "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .restart local v7    # "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .restart local v11    # "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_a
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_ITEM_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_ITEM_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    goto/16 :goto_3

    .line 360
    .end local v6    # "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v7    # "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v11    # "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->KEYBOARD_COVER_SWITCH_CAMERA_BUTTON_POS_X:I

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->SWITCH_CAMERA_BUTTON_POS_X:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->KEYBOARD_COVER_SHUTTER_BUTTON_POS_X:I

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_POS_X:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->KEYBOARD_COVER_RECORDING_BUTTON_POS_X:I

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_POS_X:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->KEYBOARD_COVER_SIDEMENU_THUMBNAIL_BUTTON_POS_X:I

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->moveBaseLayoutAbsolute(FFZ)V

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setRotatableForCoverCamera(Z)V

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->KEYBOARD_COVER_CAPTURE_PROGRESS_TEXT_BOTTOM_POS_X:F

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_BOTTOM_POS_X:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->moveBaseLayout(FF)V

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setOrientation(I)V

    goto/16 :goto_4

    .line 382
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_5
.end method

.method private hideSideQuickSetting()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1298
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->setVisibility(I)V

    .line 1299
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1302
    :cond_0
    return-void
.end method

.method private hideSideQuickSettingWithAnimation()V
    .locals 4

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->startQuickSettingCloseAnimation()V

    .line 1307
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080189

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0801a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1309
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButtonCloseAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1310
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 1313
    :cond_0
    return-void
.end method

.method private makeQuickMenuButtonAnimation()V
    .locals 8

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
    const/4 v0, 0x0

    const/high16 v1, 0x43340000    # 180.0f

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Landroid/view/animation/interpolator/CubicEaseOut;

    invoke-direct {v3}, Landroid/view/animation/interpolator/CubicEaseOut;-><init>()V

    iget v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SIDE_QUICK_SETTING_BUTTON_ANIMATION_DURATION:I

    int-to-long v4, v4

    const-wide/16 v6, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getRotateAnimation(FFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;JJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButtonCloseAnimation:Landroid/view/animation/Animation;

    .line 1318
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButtonCloseAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1320
    const/high16 v0, 0x43340000    # 180.0f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Landroid/view/animation/interpolator/CubicEaseOut;

    invoke-direct {v3}, Landroid/view/animation/interpolator/CubicEaseOut;-><init>()V

    iget v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SIDE_QUICK_SETTING_BUTTON_ANIMATION_DURATION:I

    int-to-long v4, v4

    const-wide/16 v6, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getRotateAnimation(FFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;JJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButtonOpenAnimation:Landroid/view/animation/Animation;

    .line 1321
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButtonOpenAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1329
    :goto_0
    return-void

    .line 1323
    :cond_0
    const/high16 v0, -0x3ccc0000    # -180.0f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Landroid/view/animation/interpolator/CubicEaseOut;

    invoke-direct {v3}, Landroid/view/animation/interpolator/CubicEaseOut;-><init>()V

    iget v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SIDE_QUICK_SETTING_BUTTON_ANIMATION_DURATION:I

    int-to-long v4, v4

    const-wide/16 v6, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getRotateAnimation(FFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;JJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButtonCloseAnimation:Landroid/view/animation/Animation;

    .line 1324
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButtonCloseAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1326
    const/4 v0, 0x0

    const/high16 v1, -0x3ccc0000    # -180.0f

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Landroid/view/animation/interpolator/CubicEaseOut;

    invoke-direct {v3}, Landroid/view/animation/interpolator/CubicEaseOut;-><init>()V

    iget v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SIDE_QUICK_SETTING_BUTTON_ANIMATION_DURATION:I

    int-to-long v4, v4

    const-wide/16 v6, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getRotateAnimation(FFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;JJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButtonOpenAnimation:Landroid/view/animation/Animation;

    .line 1327
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButtonOpenAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    goto :goto_0
.end method

.method private showSideQuickSetting()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1332
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->setVisibility(I)V

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    .line 1336
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1338
    :cond_1
    return-void
.end method

.method private showSideQuickSettingWithAnimation()V
    .locals 4

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->startQuickSettingOpenAnimation()V

    .line 1343
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080134

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0801a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1345
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButtonOpenAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1346
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 1349
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/QuickView;->clear()V

    .line 407
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->clear()V

    .line 411
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    .line 413
    :cond_1
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->clear()V

    .line 416
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->clear()V

    .line 417
    return-void
.end method

.method public clearSideQuickSetting()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->clearSideQuickSetting()V

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideShootingModeText()V

    .line 423
    return-void
.end method

.method public disableView(I)V
    .locals 5
    .param p1, "viewValue"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 427
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v2, :cond_0

    .line 428
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableShutterButton:Z

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 431
    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 432
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableRecordingButton:Z

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 435
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-ne v0, v3, :cond_2

    .line 436
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableSwitchCameraButton:Z

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 439
    :cond_2
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 440
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableThumbnailButton:Z

    .line 441
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setDim(Z)V

    .line 444
    :cond_3
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 445
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableShootingModeButton:Z

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 448
    :cond_4
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 449
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableSideQuickSetting:Z

    .line 450
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->hideSideQuickSetting()V

    .line 452
    :cond_5
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_6

    .line 453
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableOverlayLayout:Z

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 456
    :cond_6
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_7

    .line 457
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableIndicators:Z

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(IZ)V

    .line 460
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 461
    return-void
.end method

.method public enableView(I)V
    .locals 4
    .param p1, "viewValue"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 465
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_0

    .line 466
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableShutterButton:Z

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 469
    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 470
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableRecordingButton:Z

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 473
    :cond_1
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 474
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableSwitchCameraButton:Z

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 477
    :cond_2
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 478
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableThumbnailButton:Z

    .line 479
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->showThumbnailButton()V

    .line 481
    :cond_3
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 483
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableShootingModeButton:Z

    .line 484
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 487
    :cond_4
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 488
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableSideQuickSetting:Z

    .line 489
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->showSideQuickSetting()V

    .line 491
    :cond_5
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_6

    .line 492
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableOverlayLayout:Z

    .line 493
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 495
    :cond_6
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_7

    .line 496
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableIndicators:Z

    .line 497
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(IZ)V

    .line 499
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 500
    return-void
.end method

.method protected getAnchor(I)Lcom/samsung/android/glview/GLImage;
    .locals 1
    .param p1, "commandId"    # I

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    return-object v0
.end method

.method public getIndicators()Lcom/sec/android/app/camera/menu/Indicators;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    return-object v0
.end method

.method public hideCaptureProgressText()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 510
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

    .line 514
    const-string v0, "BaseMenu"

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

    .line 515
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-nez v0, :cond_b

    .line 516
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableIndicators:Z

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(IZ)V

    .line 519
    :cond_0
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 522
    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v7, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_2

    .line 523
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 525
    :cond_2
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableShootingModeButton:Z

    if-nez v0, :cond_3

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 527
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 530
    :cond_3
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableSideQuickSetting:Z

    if-nez v0, :cond_4

    .line 531
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->hideSideQuickSetting()V

    .line 533
    :cond_4
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_6

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_5

    .line 535
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 537
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_6

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 541
    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingAnimation:Z

    if-eqz v0, :cond_8

    .line 542
    iput-boolean v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingAnimation:Z

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 547
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 549
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 551
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 594
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 595
    return-void

    .line 553
    :cond_8
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v5, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_9

    .line 554
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 556
    :cond_9
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v6, :cond_a

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_a

    .line 557
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 559
    :cond_a
    and-int/lit8 v0, p1, 0x4

    if-ne v0, v3, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableSwitchCameraButton:Z

    if-nez v0, :cond_7

    .line 560
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    goto :goto_0

    .line 565
    :cond_b
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableIndicators:Z

    if-nez v0, :cond_c

    .line 566
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(IZ)V

    .line 568
    :cond_c
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_d

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_d

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 571
    :cond_d
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v7, :cond_e

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_e

    .line 572
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 574
    :cond_e
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableShootingModeButton:Z

    if-nez v0, :cond_f

    .line 575
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 577
    :cond_f
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_10

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableSideQuickSetting:Z

    if-nez v0, :cond_10

    .line 578
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->hideSideQuickSetting()V

    .line 580
    :cond_10
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v5, :cond_11

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_11

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 582
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(IZ)V

    .line 585
    :cond_11
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v6, :cond_12

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_12

    .line 586
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_12

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 590
    :cond_12
    and-int/lit8 v0, p1, 0x4

    if-ne v0, v3, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableSwitchCameraButton:Z

    if-nez v0, :cond_7

    .line 591
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    goto/16 :goto_0
.end method

.method public isAnimationRunning()Z
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    const/4 v0, 0x1

    .line 606
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeBaseMenuVIAnimation()V
    .locals 10

    .prologue
    .line 1070
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1071
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v1, 0xc8

    new-instance v2, Landroid/view/animation/interpolator/SineIn33;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineIn33;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1072
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    new-instance v5, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    const/16 v6, 0xc8

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1073
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1075
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1076
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v1, 0xc8

    new-instance v2, Landroid/view/animation/interpolator/SineIn33;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineIn33;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1077
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    new-instance v5, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    const/16 v6, 0xc8

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1078
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1080
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1081
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->translationDeltaY:F

    iget v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSnapshotShutterRatio:F

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    sget v5, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    new-instance v7, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    const/16 v8, 0x23a

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1083
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v1, 0x190

    new-instance v2, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1084
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSnapshotShutterRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSnapshotShutterRatio:F

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    new-instance v5, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    const/16 v6, 0x23a

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1086
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1088
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1089
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->translationDeltaY:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSnapshotShutterRatio:F

    div-float/2addr v2, v3

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    sget v5, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    new-instance v7, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    const/16 v8, 0x23a

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1091
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v1, 0x190

    new-instance v2, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1092
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSnapshotShutterRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSnapshotShutterRatio:F

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    new-instance v5, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    const/16 v6, 0x23a

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1094
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1096
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1097
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->translationDeltaY:F

    iget v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterSnapshotRatio:F

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    sget v5, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    new-instance v7, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    const/16 v8, 0x23a

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1099
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v1, 0x23a

    new-instance v2, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1100
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterSnapshotRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterSnapshotRatio:F

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    new-instance v5, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    const/16 v6, 0x23a

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1102
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1104
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1105
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->translationDeltaY:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterSnapshotRatio:F

    div-float/2addr v2, v3

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    sget v5, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    new-instance v7, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    const/16 v8, 0x23a

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1107
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v1, 0x23a

    new-instance v2, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1108
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterSnapshotRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterSnapshotRatio:F

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    new-instance v5, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    const/16 v6, 0x23a

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1110
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1111
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

    .line 1115
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_0

    .line 1116
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1117
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Lcom/sec/android/app/camera/menu/BaseMenu$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/BaseMenu$2;-><init>(Lcom/sec/android/app/camera/menu/BaseMenu;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1140
    iget-object v10, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->translationDeltaY:F

    neg-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterSnapshotRatio:F

    div-float v3, v1, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    sget v5, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    new-instance v7, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v1, v0

    move v2, v0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1142
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v2, 0x1d6

    new-instance v3, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1143
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterSnapshotRatio:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterSnapshotRatio:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v7, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v2, v11

    move v4, v11

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1145
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v12}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1148
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_1

    .line 1149
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1150
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Lcom/sec/android/app/camera/menu/BaseMenu$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/BaseMenu$3;-><init>(Lcom/sec/android/app/camera/menu/BaseMenu;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1171
    iget-object v10, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->translationDeltaY:F

    neg-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSnapshotShutterRatio:F

    div-float v3, v1, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    sget v5, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    new-instance v7, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v1, v0

    move v2, v0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1173
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-static {v8, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1174
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSnapshotShutterRatio:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSnapshotShutterRatio:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v7, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v2, v11

    move v4, v11

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1176
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v12}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1179
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_2

    .line 1180
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1181
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Lcom/sec/android/app/camera/menu/BaseMenu$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/BaseMenu$4;-><init>(Lcom/sec/android/app/camera/menu/BaseMenu;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1202
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v2, 0x12c

    new-instance v3, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1203
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

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

    .line 1204
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v12}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1206
    :cond_2
    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 10
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v9, 0x2

    const/16 v8, 0x1c21

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 611
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v4, :cond_0

    .line 612
    const-string v3, "BaseMenu"

    const-string v4, "CameraContext is null."

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :goto_0
    return v2

    .line 616
    :cond_0
    if-nez p1, :cond_1

    .line 617
    const-string v3, "BaseMenu"

    const-string v4, "View is null."

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 621
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->isShutterProgressWheelVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 622
    :cond_2
    const-string v3, "BaseMenu"

    const-string v4, "Capture is now in progress."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 626
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v4

    if-nez v4, :cond_4

    .line 627
    const-string v3, "BaseMenu"

    const-string v4, "Preview has not started yet."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 631
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 632
    const-string v3, "BaseMenu"

    const-string v4, "Recording is now in progress."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 636
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->isSwitchingCamera()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 637
    :cond_6
    const-string v3, "BaseMenu"

    const-string v4, "Switch camera is now in progress."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 641
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isPreviewChangingAnimationRunning()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 642
    const-string v3, "BaseMenu"

    const-string v4, "Change preview animation is now in progress."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 646
    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->isAnimationRunning()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 647
    const-string v3, "BaseMenu"

    const-string v4, "SideQuickSetting Animation is running."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 651
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v4

    if-nez v4, :cond_a

    .line 652
    const-string v3, "BaseMenu"

    const-string v4, "ShootingMode isn\'t activate yet."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 656
    :cond_a
    const-string v4, "BaseMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    .line 709
    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleCoverCameraClosed()V

    move v2, v3

    .line 710
    goto/16 :goto_0

    .line 660
    :sswitch_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v0, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 661
    .local v0, "backgroundAnimation":Landroid/view/animation/Animation;
    const v2, 0x7f0a0011

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 662
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 663
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v2

    invoke-interface {v2, v0, v7}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->showBlackOverlayWithAnimation(Landroid/view/animation/Animation;Lcom/samsung/android/glview/GLViewGroup;)V

    .line 664
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 665
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    .line 666
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, 0x64

    invoke-interface {v2, v4, v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    :goto_1
    move v2, v3

    .line 671
    goto/16 :goto_0

    .line 668
    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2, v9}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    .line 669
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v9, v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    goto :goto_1

    .line 673
    .end local v0    # "backgroundAnimation":Landroid/view/animation/Animation;
    :sswitch_2
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onSwitchCameraSelected()V

    .line 674
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->collapseMenu()V

    .line 675
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const-string v4, "Z140"

    invoke-interface {v3, v4, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 679
    :sswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 680
    const-string v2, "Z011"

    const-string v4, "QUICK_SETTING_ON"

    invoke-static {v2, v4}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 681
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->hideSideQuickSettingWithAnimation()V

    .line 686
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 687
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->collapseMenu()V

    move v2, v3

    .line 688
    goto/16 :goto_0

    .line 683
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_c
    const-string v2, "Z011"

    const-string v4, "QUICK_SETTING_OFF"

    invoke-static {v2, v4}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 684
    .restart local v1    # "cv":Landroid/content/ContentValues;
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->showSideQuickSettingWithAnimation()V

    goto :goto_2

    .line 690
    .end local v1    # "cv":Landroid/content/ContentValues;
    :sswitch_4
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->waitForPictureSavingThread()V

    .line 692
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->noImage()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 693
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showNoImagePopup()V

    .line 706
    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->collapseMenu()V

    move v2, v3

    .line 707
    goto/16 :goto_0

    .line 695
    :cond_d
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v5, 0x1d

    invoke-interface {v4, v5, v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    .line 696
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 697
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCoverCameraGallery()V

    goto :goto_3

    .line 699
    :cond_e
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    if-eqz v4, :cond_f

    .line 700
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const-string v4, "quickview"

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/menu/QuickView;->getType()I

    move-result v5

    invoke-interface {v2, v4, v7, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onLaunchGalleryForImage(Ljava/lang/String;Ljava/util/ArrayList;I)Z

    goto :goto_3

    .line 702
    :cond_f
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const-string v5, "quickview"

    invoke-interface {v4, v5, v7, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onLaunchGalleryForImage(Ljava/lang/String;Ljava/util/ArrayList;I)Z

    goto :goto_3

    .line 658
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x1b -> :sswitch_3
        0x1d -> :sswitch_4
        0x24 -> :sswitch_2
    .end sparse-switch
.end method

.method public onFlingDirection(II)Z
    .locals 5
    .param p1, "direction"    # I
    .param p2, "orientation"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 719
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/BaseMenu;->isPressed(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->isShutterProgressWheelVisible()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isSwitchingCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 760
    :goto_0
    return v1

    .line 723
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAEDrag()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDivideAFDrag()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDivideAFStarted()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchEVChanged()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    .line 724
    goto :goto_0

    .line 727
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeMSGToStopTouchAE()V

    .line 728
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 731
    if-nez p1, :cond_8

    .line 732
    iget-boolean v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableShootingModeButton:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    .line 733
    goto :goto_0

    .line 736
    :cond_5
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 737
    .local v0, "backgroundAnimation":Landroid/view/animation/Animation;
    const v2, 0x7f0a0011

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 738
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 739
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->showBlackOverlayWithAnimation(Landroid/view/animation/Animation;Lcom/samsung/android/glview/GLViewGroup;)V

    .line 740
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 741
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    .line 745
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v3, 0x1c20

    invoke-interface {v2, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    goto/16 :goto_0

    .line 743
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto :goto_1

    .line 748
    .end local v0    # "backgroundAnimation":Landroid/view/animation/Animation;
    :cond_8
    if-ne p1, v1, :cond_a

    .line 749
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 750
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->waitForPictureSavingThread()V

    .line 751
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->noImage()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 752
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showNoImagePopup()V

    goto/16 :goto_0

    .line 754
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCoverCameraGallery()V

    goto/16 :goto_0

    :cond_a
    move v1, v2

    .line 760
    goto/16 :goto_0
.end method

.method protected onHide()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1210
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFocusChangeListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FocusStateListener;)V

    .line 1212
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterEAM(Landroid/content/BroadcastReceiver;)V

    .line 1214
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getReview()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1218
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->isReviewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/QuickView;->isShareViaWorking()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1219
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/menu/BaseMenu;->hideReview(Z)V

    .line 1223
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1224
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1225
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1227
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->resetTranslate()V

    .line 1228
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setSize(FF)V

    .line 1229
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    .line 1231
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->resetTranslate()V

    .line 1232
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->SWITCH_CAMERA_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->SWITCH_CAMERA_BUTTON_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setSize(FF)V

    .line 1233
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    .line 1235
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->resetTranslate()V

    .line 1236
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setSize(FF)V

    .line 1237
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    .line 1238
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLButton;->setPressed(Z)V

    .line 1240
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->isVisible()I

    move-result v0

    if-nez v0, :cond_2

    .line 1241
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->endShutterProgressWheel()V

    .line 1244
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->setAnimationRunning(Z)V

    .line 1245
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1250
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1255
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

    .line 765
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_7

    .line 766
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 767
    :cond_1
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->KEYPAD:Z

    if-eqz v1, :cond_3

    .line 768
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_2

    .line 769
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 784
    :cond_2
    :goto_0
    return v0

    .line 772
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_2

    .line 773
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 777
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_7

    .line 779
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_2

    .line 780
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x82

    invoke-interface {v1, v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 784
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x1b

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 789
    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x42

    if-eq v2, v3, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_2

    .line 790
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 791
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_4

    .line 792
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 820
    :cond_2
    :goto_0
    return v0

    .line 794
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_2

    .line 798
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_5

    .line 799
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->KEYPAD:Z

    if-eqz v0, :cond_6

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_5
    :goto_1
    move v0, v1

    .line 805
    goto :goto_0

    .line 802
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 806
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v2

    const/16 v3, 0x190

    if-ne v2, v3, :cond_2

    .line 808
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_a

    .line 809
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v2

    if-nez v2, :cond_2

    .line 811
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_2

    .line 815
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_b

    .line 816
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x82

    invoke-interface {v0, v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_b
    move v0, v1

    .line 817
    goto :goto_0
.end method

.method protected onShow()V
    .locals 3

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFocusChangeListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FocusStateListener;)V

    .line 1261
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1262
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 1268
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1269
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(I)V

    .line 1272
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1274
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-nez v0, :cond_2

    .line 1275
    new-instance v0, Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    .line 1277
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->registerEAM(Landroid/content/BroadcastReceiver;)V

    .line 1279
    :cond_3
    return-void

    .line 1264
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1284
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1289
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v5, 0x82

    const/16 v4, 0x1b

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 825
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->collapseMenu()V

    .line 827
    iget-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickViewAnimating:Z

    if-eqz v2, :cond_0

    .line 828
    const-string v1, "BaseMenu"

    const-string v2, "QuickView animation is running."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :goto_0
    return v0

    .line 832
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->isAnimationRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 833
    const-string v1, "BaseMenu"

    const-string v2, "SideQuickSetting Animation is running."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 837
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_2
    :goto_1
    move v0, v1

    .line 893
    goto :goto_0

    .line 839
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 840
    goto :goto_0

    .line 842
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p2}, Lcom/samsung/android/glview/GLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 843
    goto :goto_0

    .line 847
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 848
    goto :goto_0

    .line 850
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 851
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p2}, Lcom/samsung/android/glview/GLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 852
    goto :goto_0

    .line 855
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p2}, Lcom/samsung/android/glview/GLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 856
    goto :goto_0

    .line 860
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 862
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 865
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 868
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->shutterButtonCancelAction()V

    goto :goto_1

    .line 875
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 876
    goto :goto_0

    .line 878
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 880
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 883
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 837
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x24 -> :sswitch_0
        0x41 -> :sswitch_2
    .end sparse-switch

    .line 860
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 878
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public registerEAM()V
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->registerEAM(Landroid/content/BroadcastReceiver;)V

    .line 901
    :cond_0
    return-void
.end method

.method public setBaseMenuAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 905
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->setAlpha(F)V

    .line 908
    :cond_0
    return-void
.end method

.method public setCapturingProgress(I)V
    .locals 5
    .param p1, "progress"    # I

    .prologue
    .line 912
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 913
    return-void
.end method

.method public setCoverCamera(Z)V
    .locals 1
    .param p1, "coverCamera"    # Z

    .prologue
    .line 917
    if-nez p1, :cond_0

    .line 918
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->refreshItem()V

    .line 920
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->setCoverCamera(Z)V

    .line 921
    return-void
.end method

.method protected declared-synchronized setShootingModeView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 1
    .param p1, "shootingModeViewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p2, "shootingModecontrollerLayout"    # Lcom/samsung/android/glview/GLViewGroup;

    .prologue
    .line 1293
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->setShootingModeView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V

    .line 1294
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->resetView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1295
    monitor-exit p0

    return-void

    .line 1293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showCaptureProgressText()V
    .locals 2

    .prologue
    .line 925
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 926
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

    .line 930
    const-string v0, "BaseMenu"

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

    .line 931
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-nez v0, :cond_13

    .line 932
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableIndicators:Z

    if-nez v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(I)V

    .line 935
    :cond_0
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_1

    .line 936
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 938
    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v5, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_3

    .line 939
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 940
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 942
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 943
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 944
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 947
    :cond_3
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v6, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_6

    .line 948
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCallStatus()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 949
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 951
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 953
    :cond_6
    and-int/lit8 v0, p1, 0x4

    if-ne v0, v3, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableSwitchCameraButton:Z

    if-nez v0, :cond_7

    .line 954
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 956
    :cond_7
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v7, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_8

    .line 957
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->showThumbnailButton()V

    .line 959
    :cond_8
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableShootingModeButton:Z

    if-nez v0, :cond_9

    .line 960
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_9

    .line 961
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 964
    :cond_9
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableSideQuickSetting:Z

    if-nez v0, :cond_a

    .line 965
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->showSideQuickSetting()V

    .line 967
    :cond_a
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_c

    .line 968
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_b

    .line 969
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 971
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_c

    .line 972
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 975
    :cond_c
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingAnimation:Z

    if-eqz v0, :cond_12

    .line 976
    iput-boolean v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingAnimation:Z

    .line 977
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_d

    .line 978
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 979
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 981
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_e

    .line 982
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 983
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 985
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_f

    .line 986
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 987
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 989
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 990
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 991
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 993
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 995
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 996
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 997
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 998
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_10

    .line 999
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 1001
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_11

    .line 1002
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 1004
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_12

    .line 1005
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 1038
    :cond_12
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 1039
    return-void

    .line 1009
    :cond_13
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->hideSideQuickSetting()V

    .line 1010
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 1011
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 1012
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 1013
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 1015
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_14

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableIndicators:Z

    if-nez v0, :cond_14

    .line 1016
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(I)V

    .line 1018
    :cond_14
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_15

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_15

    .line 1019
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideShootingModeText()V

    .line 1020
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 1022
    :cond_15
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v7, :cond_16

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_16

    .line 1023
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    sget v1, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_THUMBNAIL_BUTTON_POS_X:I

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_THUMBNAIL_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/menu/BaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->moveBaseLayoutAbsolute(FFZ)V

    .line 1024
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setRotatableForCoverCamera(Z)V

    .line 1025
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->showThumbnailButton()V

    .line 1027
    :cond_16
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v6, :cond_17

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_17

    .line 1028
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_17

    .line 1029
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 1032
    :cond_17
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v5, :cond_12

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_12

    .line 1033
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 1034
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 1035
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    invoke-virtual {v0, v4, v4}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(IZ)V

    goto/16 :goto_0
.end method

.method public unregisterEAM()V
    .locals 2

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterEAM(Landroid/content/BroadcastReceiver;)V

    .line 1046
    :cond_0
    return-void
.end method

.method public varargs updateSideQuickSetting([I)V
    .locals 1
    .param p1, "commandIds"    # [I

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->updateSideQuickSetting([I)V

    .line 1056
    return-void
.end method
