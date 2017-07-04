.class public Lcom/sec/android/app/camera/widget/gl/ModeItem;
.super Lcom/sec/android/app/camera/widget/gl/Item;
.source "ModeItem.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/ModeItem$SelectListener;,
        Lcom/sec/android/app/camera/widget/gl/ModeItem$CheckBoxSelectListener;
    }
.end annotation


# static fields
.field private static final EASY_MODE_ICON_POS_X:F

.field private static final EASY_MODE_ICON_WIDTH:F

.field private static final EASY_MODE_MENU_ITEM_HEIGHT:F

.field private static final EASY_MODE_TITLE_FONT_SIZE:I

.field private static final EASY_MODE_TITLE_HEIGHT:F

.field private static final EASY_MODE_TITLE_POS_Y:F

.field private static final EASY_MODE_TITLE_WIDTH:F

.field public static final MAIN_MODE_TYPE:I = 0x1

.field private static final MODE_DELETE_ICON_LEFT_MARGIN:F

.field private static final MODE_DELETE_ICON_TOP_MARGIN:F

.field private static final MODE_DELETE_ICON_WIDTH:F

.field private static final MODE_DESCRIPTION_FONT_SIZE:F

.field public static final MODE_DESCRIPTION_TYPE:I = 0x2

.field private static final MODE_ICON_POS_X:F

.field private static final MODE_ICON_POS_Y:F

.field private static final MODE_ICON_WIDTH:F

.field private static final MODE_INFO_DESCRIPTION_DIVIDER_WIDTH:F

.field private static final MODE_INFO_DESCRIPTION_DIVIDER_WIDTH_LANDSCAPE:F

.field private static final MODE_INFO_DESCRIPTION_LINE_SPACING:F

.field private static final MODE_INFO_DESCRIPTION_MARGIN:F

.field private static final MODE_INFO_DESCRIPTION_PADDING:F

.field private static final MODE_INFO_DESCRIPTION_POS_X:F

.field private static final MODE_INFO_DESCRIPTION_WIDTH:F

.field private static final MODE_INFO_DESCRIPTION_WIDTH_LANDSCAPE:F

.field private static final MODE_INFO_DIVIDER_COLOR:I

.field private static final MODE_INFO_DIVIDER_POS_X:F

.field private static final MODE_INFO_DIVIDER_THICKNESS:I

.field private static final MODE_INFO_ICON_POS_X:F

.field private static final MODE_INFO_ICON_SCALE:F = 0.8f

.field private static final MODE_INFO_ICON_WIDTH:F

.field private static final MODE_INFO_ITEM_HEIGHT:F

.field private static final MODE_INFO_TITLE_FONT_SIZE:F

.field private static final MODE_INFO_TITLE_HEIGHT:F

.field private static final MODE_INFO_TITLE_POS_X:F

.field private static final MODE_INFO_TITLE_TOP_MARGIN:F

.field private static final MODE_INFO_TITLE_WIDTH:F

.field private static final MODE_MENU_ITEM_HEIGHT:F

.field private static final MODE_MENU_ITEM_WIDTH:F

.field private static final MODE_TITLE_FONT_COLOR:I

.field private static final MODE_TITLE_FONT_SIZE:F

.field private static final MODE_TITLE_HEIGHT:F

.field private static final MODE_TITLE_POS_Y:F

.field private static final SCREEN_HEIGHT:F

.field private static final SCREEN_WIDTH:F

.field private static final TAG:Ljava/lang/String; = "ModeItem"


# instance fields
.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCheckBoxSelectListener:Lcom/sec/android/app/camera/widget/gl/ModeItem$CheckBoxSelectListener;

.field private mCurrentType:I

.field private mDeleteButton:Lcom/samsung/android/glview/GLButton;

.field private mDescription:Lcom/samsung/android/glview/GLText;

.field private mDescriptionHeight:F

.field private mDescriptionLandscapeHeight:F

.field private mDivider:Lcom/samsung/android/glview/GLLine;

.field private mDownloadIcon:Lcom/samsung/android/glview/GLImage;

.field private mDownloadedShootingMode:Z

.field private mIsDownloaded:Z

.field private final mMenuId:I

.field private mModeButton:Lcom/samsung/android/glview/GLSelectButton;

.field private final mModeId:I

.field private mSelectListener:Lcom/sec/android/app/camera/widget/gl/ModeItem$SelectListener;

.field private mShortCutCheckBox:Lcom/samsung/android/glview/GLSelectButton;

.field private mTitleHeight:F

.field private mTitleText:Lcom/samsung/android/glview/GLText;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, 0x7f0902d9

    const/high16 v3, 0x40000000    # 2.0f

    .line 49
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->SCREEN_WIDTH:F

    .line 50
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->SCREEN_HEIGHT:F

    .line 51
    const v0, 0x7f0902d3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_MENU_ITEM_WIDTH:F

    .line 52
    const v0, 0x7f0902d2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_MENU_ITEM_HEIGHT:F

    .line 53
    const v0, 0x7f0902d0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_TITLE_HEIGHT:F

    .line 54
    const v0, 0x7f0902d1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_TITLE_POS_Y:F

    .line 55
    const v0, 0x7f0902cf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_ICON_WIDTH:F

    .line 56
    sget v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_MENU_ITEM_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_ICON_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_ICON_POS_X:F

    .line 57
    const v0, 0x7f090131

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_ICON_POS_Y:F

    .line 58
    const v0, 0x7f090330

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_DELETE_ICON_WIDTH:F

    .line 59
    const v0, 0x7f09032f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_DELETE_ICON_TOP_MARGIN:F

    .line 60
    const v0, 0x7f09032e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_DELETE_ICON_LEFT_MARGIN:F

    .line 61
    const v0, 0x7f090127

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_POS_X:F

    .line 62
    const v0, 0x7f090128

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DIVIDER_POS_X:F

    .line 63
    const v0, 0x7f090125

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_MARGIN:F

    .line 64
    const v0, 0x7f090126

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_PADDING:F

    .line 65
    sget v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->SCREEN_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_POS_X:F

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_MARGIN:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_WIDTH:F

    .line 66
    sget v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->SCREEN_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_POS_X:F

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_MARGIN:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_WIDTH_LANDSCAPE:F

    .line 67
    sget v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_POS_X:F

    sget v2, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DIVIDER_POS_X:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_DIVIDER_WIDTH:F

    .line 68
    sget v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_WIDTH_LANDSCAPE:F

    sget v1, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_POS_X:F

    sget v2, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DIVIDER_POS_X:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_DIVIDER_WIDTH_LANDSCAPE:F

    .line 69
    const v0, 0x7f090314

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_LINE_SPACING:F

    .line 70
    const v0, 0x7f09012a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ICON_POS_X:F

    .line 71
    const v0, 0x7f09012b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ICON_WIDTH:F

    .line 73
    const v0, 0x7f09012f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_WIDTH:F

    .line 74
    sget v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ICON_POS_X:F

    sget v1, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ICON_WIDTH:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_POS_X:F

    .line 75
    const v0, 0x7f09012d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_HEIGHT:F

    .line 76
    const v0, 0x7f09012e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_TOP_MARGIN:F

    .line 77
    const v0, 0x7f0a0034

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DIVIDER_THICKNESS:I

    .line 78
    const v0, 0x7f0c0023

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DIVIDER_COLOR:I

    .line 79
    const v0, 0x7f090129

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DIVIDER_THICKNESS:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ITEM_HEIGHT:F

    .line 80
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_TITLE_FONT_SIZE:F

    .line 81
    const v0, 0x7f0c0024

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_TITLE_FONT_COLOR:I

    .line 82
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_FONT_SIZE:F

    .line 83
    const v0, 0x7f0a0004

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_DESCRIPTION_FONT_SIZE:F

    .line 85
    const v0, 0x7f0900c3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->EASY_MODE_MENU_ITEM_HEIGHT:F

    .line 86
    const v0, 0x7f0900bb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->EASY_MODE_TITLE_HEIGHT:F

    .line 87
    const v0, 0x7f0900c4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->EASY_MODE_TITLE_WIDTH:F

    .line 88
    const v0, 0x7f0900bc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->EASY_MODE_TITLE_POS_Y:F

    .line 89
    const v0, 0x7f0900ba

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->EASY_MODE_ICON_WIDTH:F

    .line 90
    sget v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->EASY_MODE_TITLE_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/widget/gl/ModeItem;->EASY_MODE_ICON_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->EASY_MODE_ICON_POS_X:F

    .line 91
    const v0, 0x7f0a0003

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->EASY_MODE_TITLE_FONT_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;IZ)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "data"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p7, "command"    # Lcom/sec/android/app/camera/command/MenuCommand;
    .param p8, "type"    # I
    .param p9, "downloaded"    # Z

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/widget/gl/Item;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    .line 108
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadedShootingMode:Z

    .line 109
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCurrentType:I

    .line 110
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mIsDownloaded:Z

    .line 123
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mMenuId:I

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeId:I

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mMenuId:I

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 129
    iput p8, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCurrentType:I

    .line 130
    iput-boolean p9, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mIsDownloaded:Z

    .line 132
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->init()V

    .line 133
    return-void
.end method

.method private isCurrentMode()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 747
    const/4 v0, 0x0

    .line 749
    .local v0, "isCurrent":Z
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-nez v3, :cond_0

    .line 764
    :goto_0
    return v2

    .line 752
    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadedShootingMode:Z

    if-nez v3, :cond_3

    .line 753
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mMenuId:I

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeId:I

    if-ne v3, v4, :cond_2

    move v0, v1

    :cond_1
    :goto_1
    move v2, v0

    .line 764
    goto :goto_0

    :cond_2
    move v0, v2

    .line 753
    goto :goto_1

    .line 756
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 757
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mMenuId:I

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeId:I

    if-ne v3, v4, :cond_4

    move v0, v1

    :goto_2
    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    .line 758
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCommandIdByCurrentShootingMode()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSeparatedShootingModeName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 760
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mMenuId:I

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 140
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/widget/gl/Item;->clear()V

    .line 141
    return-void
.end method

.method protected clearContent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->clear()V

    .line 464
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 469
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_2

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 474
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDescription:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_3

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDescription:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDescription:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 479
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDescription:Lcom/samsung/android/glview/GLText;

    .line 481
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    if-eqz v0, :cond_4

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLLine;->clear()V

    .line 484
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    .line 486
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_5

    .line 487
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    .line 489
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    .line 491
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mShortCutCheckBox:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_6

    .line 492
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mShortCutCheckBox:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 493
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mShortCutCheckBox:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->clear()V

    .line 494
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mShortCutCheckBox:Lcom/samsung/android/glview/GLSelectButton;

    .line 496
    :cond_6
    return-void
.end method

.method public getButton()Lcom/samsung/android/glview/GLView;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    return-object v0
.end method

.method public getShootingModeDescription(I)Ljava/lang/String;
    .locals 4
    .param p1, "shootingmode"    # I

    .prologue
    .line 148
    const-string v0, ""

    .line 150
    .local v0, "description":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 207
    const-string v1, "ModeItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShootingModeDescription : invalid shootingmode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_0
    return-object v0

    .line 152
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08006d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    goto :goto_0

    .line 155
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08006f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    goto :goto_0

    .line 158
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080092

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    goto :goto_0

    .line 161
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080085

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    goto :goto_0

    .line 165
    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080087

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    goto :goto_0

    .line 168
    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080097

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    goto :goto_0

    .line 171
    :sswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080094

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    goto :goto_0

    .line 174
    :sswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080073

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    goto :goto_0

    .line 177
    :sswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08008c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    goto :goto_0

    .line 180
    :sswitch_9
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080063

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    goto/16 :goto_0

    .line 183
    :sswitch_a
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08006c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    goto/16 :goto_0

    .line 186
    :sswitch_b
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080099

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    goto/16 :goto_0

    .line 189
    :sswitch_c
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08008a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    goto/16 :goto_0

    .line 192
    :sswitch_d
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080089

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    goto/16 :goto_0

    .line 195
    :sswitch_e
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080066

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    goto/16 :goto_0

    .line 198
    :sswitch_f
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080077

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    goto/16 :goto_0

    .line 201
    :sswitch_10
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080071

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    goto/16 :goto_0

    .line 204
    :sswitch_11
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08008e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    goto/16 :goto_0

    .line 150
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_7
        0x2 -> :sswitch_4
        0x7 -> :sswitch_1
        0xe -> :sswitch_8
        0x17 -> :sswitch_3
        0x23 -> :sswitch_5
        0x28 -> :sswitch_6
        0x2d -> :sswitch_11
        0x31 -> :sswitch_e
        0x34 -> :sswitch_b
        0x37 -> :sswitch_a
        0x38 -> :sswitch_2
        0x3a -> :sswitch_9
        0x3b -> :sswitch_c
        0x42 -> :sswitch_f
        0x43 -> :sswitch_10
        0x48 -> :sswitch_4
        0x4b -> :sswitch_d
    .end sparse-switch
.end method

.method public getShortCutCheckBoxSelected()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mShortCutCheckBox:Lcom/samsung/android/glview/GLSelectButton;

    if-nez v0, :cond_0

    .line 215
    const/4 v0, 0x0

    .line 218
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mShortCutCheckBox:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->getSelected()Z

    move-result v0

    goto :goto_0
.end method

.method protected init()V
    .locals 47

    .prologue
    .line 500
    const/16 v43, 0x0

    .line 501
    .local v43, "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    const/16 v44, 0x0

    .line 503
    .local v44, "modeDataPackage":Ljava/lang/String;
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v2, :cond_1

    .line 504
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCurrentType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCurrentType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 505
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getShootingMode(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v43

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v44

    .line 507
    if-eqz v43, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isPreloadedShootingMode(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 508
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadedShootingMode:Z

    .line 513
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCurrentType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 515
    new-instance v2, Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->EASY_MODE_ICON_POS_X:F

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/widget/gl/ModeItem;->EASY_MODE_ICON_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/widget/gl/ModeItem;->EASY_MODE_ICON_WIDTH:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 516
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeId:I

    sparse-switch v2, :sswitch_data_0

    .line 561
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLSelectButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLSelectButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLSelectButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSelectButton;->setObjectTag(Ljava/lang/String;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_3

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const v3, 0x7f0801f8

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 572
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mShortCutCheckBox:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v2, :cond_4

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mShortCutCheckBox:Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLSelectButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mShortCutCheckBox:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSelectButton;->setVisibility(I)V

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mShortCutCheckBox:Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 646
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadedShootingMode:Z

    if-eqz v2, :cond_1b

    if-eqz v43, :cond_1b

    .line 647
    move-object/from16 v0, v43

    iget-object v2, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitle:Ljava/lang/String;

    .line 649
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 651
    .local v8, "normalBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 654
    .local v9, "pressedBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCurrentType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_19

    .line 655
    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3f4ccccd    # 0.8f

    invoke-static {v8, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getResizedBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 656
    .local v24, "resizedBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/glview/GLSelectButton;->setButtonResources(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 657
    if-eqz v8, :cond_5

    .line 658
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 659
    const/4 v8, 0x0

    .line 665
    .end local v24    # "resizedBitmap":Landroid/graphics/Bitmap;
    :cond_5
    :goto_2
    move-object/from16 v0, v43

    iget v2, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->downloaded:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 666
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f02011b

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    .line 667
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCurrentType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_ICON_POS_X:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_ICON_WIDTH:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_ICON_POS_Y:F

    sget v5, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_ICON_WIDTH:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 672
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 681
    .end local v8    # "normalBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "pressedBitmap":Landroid/graphics/Bitmap;
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-nez v2, :cond_7

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitle:Ljava/lang/String;

    if-nez v2, :cond_1c

    .line 683
    const-string v2, "ModeItem"

    const-string v3, "initContent : mTitle is null"

    invoke-static {v2, v3}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 720
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCurrentType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 721
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setSizeForOrientation(I)V

    .line 724
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v2, :cond_a

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSelectButton;->setExtraDescription(Z)V

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSelectButton;->enableRippleEffect(Z)V

    .line 730
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeId:I

    const/16 v3, 0x34

    if-ne v2, v3, :cond_b

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080217

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSelectButton;->setContentDescription(Ljava/lang/String;)V

    .line 734
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->isCurrentMode()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 735
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCurrentType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 736
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setSelect(Z)V

    .line 739
    :cond_c
    return-void

    .line 518
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    const v3, 0x7f0200a1

    const v4, 0x7f0200a2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/glview/GLSelectButton;->setButtonResources(IIII)V

    goto/16 :goto_0

    .line 522
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    const v3, 0x7f0200a3

    const v4, 0x7f0200a4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/glview/GLSelectButton;->setButtonResources(IIII)V

    goto/16 :goto_0

    .line 525
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    const v3, 0x7f0200a5

    const v4, 0x7f0200a6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/glview/GLSelectButton;->setButtonResources(IIII)V

    goto/16 :goto_0

    .line 528
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    const v3, 0x7f0200a7

    const v4, 0x7f0200a8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/glview/GLSelectButton;->setButtonResources(IIII)V

    goto/16 :goto_0

    .line 532
    :cond_d
    if-nez v43, :cond_f

    .line 533
    new-instance v2, Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_MENU_ITEM_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_MENU_ITEM_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_ICON_POS_X:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_ICON_POS_Y:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLSelectButton;->setResourceOffset(FF)Z

    .line 549
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020289

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f0c0026

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/ImageUtils;->getTintBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 551
    .local v17, "onBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020288

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f0c0026

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/ImageUtils;->getTintBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 553
    .local v16, "offBitmap":Landroid/graphics/Bitmap;
    new-instance v10, Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v14, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_MENU_ITEM_WIDTH:F

    sget v15, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_MENU_ITEM_HEIGHT:F

    const/16 v18, 0x0

    invoke-direct/range {v10 .. v18}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mShortCutCheckBox:Lcom/samsung/android/glview/GLSelectButton;

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mShortCutCheckBox:Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLSelectButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mShortCutCheckBox:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 557
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mShortCutCheckBox:Lcom/samsung/android/glview/GLSelectButton;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_MENU_ITEM_WIDTH:F

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLSelectButton;->setResourceOffset(FF)Z

    goto/16 :goto_0

    .line 536
    .end local v16    # "offBitmap":Landroid/graphics/Bitmap;
    .end local v17    # "onBitmap":Landroid/graphics/Bitmap;
    :cond_f
    const/4 v8, 0x0

    .line 537
    .restart local v8    # "normalBitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 538
    .restart local v9    # "pressedBitmap":Landroid/graphics/Bitmap;
    if-nez v44, :cond_10

    .line 539
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 540
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 542
    :cond_10
    new-instance v2, Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_MENU_ITEM_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_MENU_ITEM_HEIGHT:F

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_ICON_POS_X:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_ICON_POS_Y:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLSelectButton;->setResourceOffset(FF)Z

    .line 545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isDownloadedShootingMode(I)Z

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 546
    :cond_11
    new-instance v10, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    sget v12, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_DELETE_ICON_LEFT_MARGIN:F

    sget v13, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_DELETE_ICON_TOP_MARGIN:F

    sget v14, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_DELETE_ICON_WIDTH:F

    sget v15, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_DELETE_ICON_WIDTH:F

    const v16, 0x7f020121

    const v17, 0x7f020122

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_6

    .line 577
    .end local v8    # "normalBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "pressedBitmap":Landroid/graphics/Bitmap;
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCurrentType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 578
    const/4 v8, 0x0

    .line 579
    .restart local v8    # "normalBitmap":Landroid/graphics/Bitmap;
    const/16 v24, 0x0

    .line 581
    .restart local v24    # "resizedBitmap":Landroid/graphics/Bitmap;
    if-nez v44, :cond_13

    .line 582
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 583
    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3f4ccccd    # 0.8f

    invoke-static {v8, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getResizedBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 586
    :cond_13
    new-instance v18, Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    sget v22, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_WIDTH:F

    sget v23, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ICON_WIDTH:F

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v18 .. v26}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ICON_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLSelectButton;->setResourceOffset(FF)Z

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLSelectButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLSelectButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLSelectButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 593
    if-eqz v8, :cond_14

    .line 594
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 595
    const/4 v8, 0x0

    .line 598
    :cond_14
    const-string v31, ""

    .line 599
    .local v31, "description":Ljava/lang/String;
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v2, :cond_16

    .line 600
    if-eqz v43, :cond_15

    .line 601
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeId:I

    sparse-switch v2, :sswitch_data_1

    .line 609
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeDesc:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 617
    :cond_15
    :goto_7
    if-nez v31, :cond_17

    .line 618
    const-string v2, "ModeItem"

    const-string v3, "initContent : description is null"

    invoke-static {v2, v3}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 603
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080083

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f080082

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 604
    goto :goto_7

    .line 606
    :sswitch_5
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeDesc:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 607
    goto :goto_7

    .line 614
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getShootingModeDescription(I)Ljava/lang/String;

    move-result-object v31

    goto :goto_7

    .line 620
    :cond_17
    sget v2, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_DESCRIPTION_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v46

    .line 621
    .local v46, "stringHeight":F
    sget v2, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_DESCRIPTION_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v45

    .line 622
    .local v45, "rows":I
    move/from16 v0, v45

    int-to-float v2, v0

    mul-float v2, v2, v46

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_LINE_SPACING:F

    add-int/lit8 v4, v45, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDescriptionHeight:F

    .line 624
    sget v2, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_WIDTH_LANDSCAPE:F

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_DESCRIPTION_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v42

    .line 625
    .local v42, "landscapeRows":I
    move/from16 v0, v42

    int-to-float v2, v0

    mul-float v2, v2, v46

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_LINE_SPACING:F

    add-int/lit8 v4, v42, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDescriptionLandscapeHeight:F

    .line 627
    new-instance v25, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v26

    sget v27, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_POS_X:F

    sget v28, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_PADDING:F

    sget v29, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_WIDTH:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDescriptionHeight:F

    move/from16 v30, v0

    sget v2, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_DESCRIPTION_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v32, v2, v3

    sget v33, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_TITLE_FONT_COLOR:I

    const/16 v34, 0x0

    invoke-direct/range {v25 .. v34}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDescription:Lcom/samsung/android/glview/GLText;

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDescription:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 630
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDescription:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 635
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDescription:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDescription:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    .line 638
    new-instance v32, Lcom/samsung/android/glview/GLLine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v33

    const/16 v34, 0x0

    const/16 v35, 0x0

    sget v36, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_DIVIDER_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DIVIDER_THICKNESS:I

    int-to-float v0, v2

    move/from16 v37, v0

    sget v38, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DIVIDER_COLOR:I

    sget v2, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DIVIDER_THICKNESS:I

    int-to-float v0, v2

    move/from16 v39, v0

    invoke-direct/range {v32 .. v39}, Lcom/samsung/android/glview/GLLine;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLLine;->setBypassTouch(Z)V

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDescription:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_1

    .line 633
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDescription:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto :goto_8

    .line 662
    .end local v24    # "resizedBitmap":Landroid/graphics/Bitmap;
    .end local v31    # "description":Ljava/lang/String;
    .end local v42    # "landscapeRows":I
    .end local v45    # "rows":I
    .end local v46    # "stringHeight":F
    .restart local v9    # "pressedBitmap":Landroid/graphics/Bitmap;
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v2, v8, v9}, Lcom/samsung/android/glview/GLSelectButton;->setButtonResources(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 670
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLSelectButton;->getRight()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLSelectButton;->getBottom()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    goto/16 :goto_3

    .line 676
    .end local v8    # "normalBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "pressedBitmap":Landroid/graphics/Bitmap;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v2

    if-eqz v2, :cond_6

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitle:Ljava/lang/String;

    goto/16 :goto_4

    .line 684
    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCurrentType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 686
    sget v2, Lcom/sec/android/app/camera/widget/gl/ModeItem;->EASY_MODE_TITLE_WIDTH:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitle:Ljava/lang/String;

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->EASY_MODE_TITLE_FONT_SIZE:I

    int-to-float v4, v4

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v45

    .line 687
    .restart local v45    # "rows":I
    const/4 v2, 0x1

    move/from16 v0, v45

    if-le v0, v2, :cond_1d

    .line 688
    sget v2, Lcom/sec/android/app/camera/widget/gl/ModeItem;->EASY_MODE_MENU_ITEM_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->EASY_MODE_TITLE_POS_Y:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleHeight:F

    .line 692
    :goto_9
    new-instance v32, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v33

    const/16 v34, 0x0

    sget v35, Lcom/sec/android/app/camera/widget/gl/ModeItem;->EASY_MODE_TITLE_POS_Y:F

    sget v36, Lcom/sec/android/app/camera/widget/gl/ModeItem;->EASY_MODE_TITLE_WIDTH:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleHeight:F

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitle:Ljava/lang/String;

    move-object/from16 v38, v0

    sget v2, Lcom/sec/android/app/camera/widget/gl/ModeItem;->EASY_MODE_TITLE_FONT_SIZE:I

    int-to-float v0, v2

    move/from16 v39, v0

    sget v40, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_TITLE_FONT_COLOR:I

    const/16 v41, 0x0

    invoke-direct/range {v32 .. v41}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    goto/16 :goto_5

    .line 690
    :cond_1d
    sget v2, Lcom/sec/android/app/camera/widget/gl/ModeItem;->EASY_MODE_TITLE_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleHeight:F

    goto :goto_9

    .line 695
    .end local v45    # "rows":I
    :cond_1e
    sget v2, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_MENU_ITEM_WIDTH:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitle:Ljava/lang/String;

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_TITLE_FONT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v45

    .line 696
    .restart local v45    # "rows":I
    const/4 v2, 0x1

    move/from16 v0, v45

    if-le v0, v2, :cond_1f

    .line 697
    sget v2, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_MENU_ITEM_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_TITLE_POS_Y:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleHeight:F

    .line 701
    :goto_a
    new-instance v32, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v33

    const/16 v34, 0x0

    sget v35, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_TITLE_POS_Y:F

    sget v36, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_MENU_ITEM_WIDTH:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleHeight:F

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitle:Ljava/lang/String;

    move-object/from16 v38, v0

    sget v39, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_TITLE_FONT_SIZE:F

    sget v40, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_TITLE_FONT_COLOR:I

    const/16 v41, 0x0

    invoke-direct/range {v32 .. v41}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mShortCutCheckBox:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v2, :cond_7

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mShortCutCheckBox:Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 699
    :cond_1f
    sget v2, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_TITLE_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleHeight:F

    goto :goto_a

    .line 708
    .end local v45    # "rows":I
    :cond_20
    sget v2, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_WIDTH:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitle:Ljava/lang/String;

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_FONT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v45

    .line 709
    .restart local v45    # "rows":I
    sget v2, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_HEIGHT:F

    move/from16 v0, v45

    int-to-float v3, v0

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleHeight:F

    .line 710
    new-instance v32, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v33

    const/16 v34, 0x0

    const/16 v35, 0x0

    sget v36, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_WIDTH:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleHeight:F

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitle:Ljava/lang/String;

    move-object/from16 v38, v0

    sget v39, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_FONT_SIZE:F

    sget v40, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_TITLE_FONT_COLOR:I

    const/16 v41, 0x0

    invoke-direct/range {v32 .. v41}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    goto/16 :goto_5

    .line 516
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x34 -> :sswitch_3
        0x37 -> :sswitch_2
        0x48 -> :sswitch_1
    .end sparse-switch

    .line 601
    :sswitch_data_1
    .sparse-switch
        0x2e -> :sswitch_4
        0x3b -> :sswitch_5
    .end sparse-switch
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->isCurrentMode()Z

    move-result v0

    return v0
.end method

.method public onCameraSettingChanged(II)V
    .locals 2
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/4 v0, 0x1

    .line 231
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mMenuId:I

    if-ne p1, v1, :cond_0

    .line 232
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCurrentType:I

    if-ne v1, v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->isCurrentMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setSelect(Z)V

    .line 236
    :cond_0
    return-void

    .line 233
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 9
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 240
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 241
    const-string v1, ""

    .line 242
    .local v1, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v6

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v4, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getShootingMode(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v0

    .line 243
    .local v0, "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 244
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v4, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 248
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 249
    .local v2, "packageUri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DELETE"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 250
    .local v3, "uninstallIntent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 251
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 253
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 254
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v6, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeTitle:Ljava/lang/String;

    iget-object v7, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->packageName:Ljava/lang/String;

    iget-object v8, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->activityName:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->uninstallShootingModeShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .end local v0    # "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "packageUri":Landroid/net/Uri;
    .end local v3    # "uninstallIntent":Landroid/content/Intent;
    :goto_1
    return v5

    .line 246
    .restart local v0    # "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_0
    iget-object v1, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 256
    .restart local v2    # "packageUri":Landroid/net/Uri;
    .restart local v3    # "uninstallIntent":Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v6, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeTitle:Ljava/lang/String;

    const-string v7, "com.sec.android.app.camera"

    const-string v8, "com.sec.android.app.camera.Camera"

    invoke-interface {v4, v6, v7, v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->uninstallShootingModeShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 260
    .end local v0    # "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "packageUri":Landroid/net/Uri;
    .end local v3    # "uninstallIntent":Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mShortCutCheckBox:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 261
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCheckBoxSelectListener:Lcom/sec/android/app/camera/widget/gl/ModeItem$CheckBoxSelectListener;

    move-object v4, p1

    check-cast v4, Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLSelectButton;->isSelected()Z

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v7

    invoke-interface {v6, p1, v4, v7}, Lcom/sec/android/app/camera/widget/gl/ModeItem$CheckBoxSelectListener;->onCheckBoxSelect(Lcom/samsung/android/glview/GLView;ZI)V

    goto :goto_1

    .line 264
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 265
    const-string v4, "ModeItem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Execute Menu!!!!, CommandId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCurrentType:I

    if-ne v4, v5, :cond_5

    move v4, v5

    :goto_2
    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCurrentType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    move v7, v5

    :goto_3
    or-int/2addr v4, v7

    if-eqz v4, :cond_8

    .line 268
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->isCurrentMode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 269
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setSelect(Z)V

    .line 270
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    if-eqz v4, :cond_4

    .line 271
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    invoke-interface {v4, p1}, Lcom/samsung/android/glview/GLView$ClickListener;->onClick(Lcom/samsung/android/glview/GLView;)Z

    :cond_4
    move v5, v6

    .line 273
    goto :goto_1

    :cond_5
    move v4, v6

    .line 267
    goto :goto_2

    :cond_6
    move v7, v6

    goto :goto_3

    .line 275
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mSelectListener:Lcom/sec/android/app/camera/widget/gl/ModeItem$SelectListener;

    if-eqz v4, :cond_8

    .line 276
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mSelectListener:Lcom/sec/android/app/camera/widget/gl/ModeItem$SelectListener;

    invoke-interface {v4, p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem$SelectListener;->onSelect(Lcom/samsung/android/glview/GLView;)V

    .line 280
    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    goto/16 :goto_1

    :cond_9
    move v5, v6

    .line 283
    goto/16 :goto_1
.end method

.method public onOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 288
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCurrentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 289
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setSizeForOrientation(I)V

    .line 291
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->onOrientationChanged(I)V

    .line 292
    return-void
.end method

.method public setCheckBoxSelectListener(Lcom/sec/android/app/camera/widget/gl/ModeItem$CheckBoxSelectListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/widget/gl/ModeItem$CheckBoxSelectListener;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mCheckBoxSelectListener:Lcom/sec/android/app/camera/widget/gl/ModeItem$CheckBoxSelectListener;

    .line 301
    return-void
.end method

.method public setDeleteButtonVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mIsDownloaded:Z

    if-nez v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDividerEnabled(Z)V
    .locals 1
    .param p1, "dividerEnabled"    # Z

    .prologue
    .line 318
    if-eqz p1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 321
    :cond_0
    return-void
.end method

.method public setDraggable(Z)V
    .locals 1
    .param p1, "draggable"    # Z

    .prologue
    .line 325
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setDraggable(Z)V

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setDraggable(Z)V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setDraggable(Z)V

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mShortCutCheckBox:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mShortCutCheckBox:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setDraggable(Z)V

    .line 338
    :cond_2
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setMute(Z)V

    .line 344
    :cond_0
    return-void
.end method

.method public setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    return v0
.end method

.method public setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    return v0
.end method

.method public setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    return v0
.end method

.method public setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    return v0
.end method

.method public setSelect(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 370
    :cond_0
    return-void
.end method

.method public setSelectListener(Lcom/sec/android/app/camera/widget/gl/ModeItem$SelectListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/widget/gl/ModeItem$SelectListener;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mSelectListener:Lcom/sec/android/app/camera/widget/gl/ModeItem$SelectListener;

    .line 379
    return-void
.end method

.method public setShortCutCheckBoxSelected(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mShortCutCheckBox:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 223
    return-void
.end method

.method public setShortCutCheckBoxVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mShortCutCheckBox:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mShortCutCheckBox:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mShortCutCheckBox:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setVisibility(I)V

    .line 386
    :cond_0
    return-void
.end method

.method public setSizeForOrientation(I)V
    .locals 9
    .param p1, "orientation"    # I

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 389
    const/4 v1, 0x0

    .line 390
    .local v1, "itemHeight":F
    const/4 v0, 0x0

    .line 392
    .local v0, "iconPosY":F
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDescription:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 393
    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_4

    .line 394
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDescriptionLandscapeHeight:F

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_PADDING:F

    mul-float/2addr v3, v7

    add-float v1, v2, v3

    .line 395
    sget v2, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ITEM_HEIGHT:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 396
    sget v1, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ITEM_HEIGHT:F

    .line 398
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDescription:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_WIDTH_LANDSCAPE:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_PADDING:F

    mul-float/2addr v4, v7

    sub-float v4, v1, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 399
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DIVIDER_POS_X:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DIVIDER_THICKNESS:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_DIVIDER_WIDTH_LANDSCAPE:F

    sget v6, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DIVIDER_THICKNESS:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/glview/GLLine;->setLine(FFFF)V

    .line 401
    sget v2, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ICON_WIDTH:F

    sub-float v2, v1, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_TOP_MARGIN:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleHeight:F

    sub-float/2addr v2, v3

    div-float v0, v2, v7

    .line 403
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ICON_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_TOP_MARGIN:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleHeight:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSelectButton;->setHeight(F)V

    .line 405
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 406
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDescription:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_POS_X:F

    neg-float v3, v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_MARGIN:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3, v8}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    .line 407
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_POS_X:F

    neg-float v3, v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_MARGIN:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3, v8}, Lcom/samsung/android/glview/GLLine;->moveLayoutAbsolute(FF)V

    .line 408
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_POS_X:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->SCREEN_WIDTH:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_POS_X:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    .line 409
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    if-eqz v2, :cond_1

    .line 410
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ICON_POS_X:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->SCREEN_WIDTH:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_POS_X:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 413
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_POS_X:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->SCREEN_WIDTH:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_POS_X:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    .line 423
    :goto_0
    sget v2, Lcom/sec/android/app/camera/widget/gl/ModeItem;->SCREEN_WIDTH:F

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setSize(FF)V

    .line 456
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDescription:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 457
    return-void

    .line 415
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_POS_X:F

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    .line 416
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    if-eqz v2, :cond_3

    .line 417
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ICON_POS_X:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 420
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_POS_X:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    goto :goto_0

    .line 425
    :cond_4
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDescriptionHeight:F

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_PADDING:F

    mul-float/2addr v3, v7

    add-float v1, v2, v3

    .line 426
    sget v2, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ITEM_HEIGHT:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_5

    .line 427
    sget v1, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ITEM_HEIGHT:F

    .line 429
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDescription:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_PADDING:F

    mul-float/2addr v4, v7

    sub-float v4, v1, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 430
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DIVIDER_POS_X:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DIVIDER_THICKNESS:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_DIVIDER_WIDTH:F

    sget v6, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DIVIDER_THICKNESS:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/glview/GLLine;->setLine(FFFF)V

    .line 432
    sget v2, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ICON_WIDTH:F

    sub-float v2, v1, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_TOP_MARGIN:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleHeight:F

    sub-float/2addr v2, v3

    div-float v0, v2, v7

    .line 434
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ICON_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_TOP_MARGIN:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleHeight:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSelectButton;->setHeight(F)V

    .line 436
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 437
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDescription:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_POS_X:F

    neg-float v3, v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_MARGIN:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3, v8}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    .line 438
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_POS_X:F

    neg-float v3, v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_MARGIN:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3, v8}, Lcom/samsung/android/glview/GLLine;->moveLayoutAbsolute(FF)V

    .line 439
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_POS_X:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->SCREEN_HEIGHT:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_POS_X:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    .line 440
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    if-eqz v2, :cond_6

    .line 441
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ICON_POS_X:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->SCREEN_HEIGHT:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_POS_X:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 444
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_POS_X:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->SCREEN_HEIGHT:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_DESCRIPTION_POS_X:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    .line 454
    :goto_2
    sget v2, Lcom/sec/android/app/camera/widget/gl/ModeItem;->SCREEN_HEIGHT:F

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setSize(FF)V

    goto/16 :goto_1

    .line 446
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mModeButton:Lcom/samsung/android/glview/GLSelectButton;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_POS_X:F

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    .line 447
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    if-eqz v2, :cond_8

    .line 448
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ICON_POS_X:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 451
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_TITLE_POS_X:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    goto :goto_2
.end method
