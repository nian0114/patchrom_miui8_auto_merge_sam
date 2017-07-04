.class public final Landroid/hardware/display/DisplayManager;
.super Ljava/lang/Object;
.source "DisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayManager$DisplayListener;,
        Landroid/hardware/display/DisplayManager$WfdAppState;
    }
.end annotation


# static fields
.field public static final ACTION_LAUNCH_WFD_PICKER_DLG:Ljava/lang/String; = "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

.field public static final ACTION_LAUNCH_WFD_POPUP:Ljava/lang/String; = "com.samsung.wfd.LAUNCH_WFD_POPUP"

.field public static final ACTION_LAUNCH_WFD_UPDATE:Ljava/lang/String; = "com.samsung.wfd.LAUNCH_WFD_UPDATE"

.field public static final ACTION_PICK_WFD_NETWORK:Ljava/lang/String; = "com.samsung.wfd.PICK_WFD_NETWORK"

.field public static final ACTION_RESULT_WFD_UPDATE:Ljava/lang/String; = "com.samsung.wfd.RESULT_WFD_UPDATE"

.field public static final ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String; = "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

.field public static final ACTION_WIFI_DISPLAY_TCP_TRANSPORT:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

.field public static final ACTION_WIFI_DISPLAY_UDP_TRANSPORT:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

.field private static final BASE:I = 0x22000

.field public static final CONN_STATE_CHANGEPLAYER_GALLERY:I = 0x7

.field public static final CONN_STATE_CHANGEPLAYER_MUSIC:I = 0x8

.field public static final CONN_STATE_CHANGEPLAYER_VIDEO:I = 0x6

.field public static final CONN_STATE_FRIDGE:I = 0x5

.field public static final CONN_STATE_HOMESYNC_MIRROR_MOUSE:I = 0x1

.field public static final CONN_STATE_HOMESYNC_SCREEN_MIRRORING:I = 0x2

.field public static final CONN_STATE_MULTI_ANGLE_RECORDER:I = 0x4

.field public static final CONN_STATE_NFC:I = 0x9

.field public static final CONN_STATE_NORMAL:I = -0x1

.field public static final CONN_STATE_REMOTE_VIEWFINDER:I = 0x0

.field public static final CONN_STATE_SCREEN_SHARING_AP:I = 0xa

.field public static final CONN_STATE_SCREEN_SHARING_P2P:I = 0xb

.field public static final CONN_STATE_SIDESYNC:I = 0x3

.field private static final DEBUG:Z = false

.field public static final DEFAULT:I = -0x1

.field public static final DEVICE_ADDRESS:I = 0x1

.field public static final DEVICE_NAME:I = 0x2

.field public static final DISPLAY_CATEGORY_PRESENTATION:Ljava/lang/String; = "android.hardware.display.category.PRESENTATION"

.field public static final EXTRA_CAUSE_INFO:Ljava/lang/String; = "cause"

.field public static final EXTRA_CURRENT_RESOLUTION_INFO:Ljava/lang/String; = "curRes"

.field public static final EXTRA_RESOLUTION_INFO:Ljava/lang/String; = "resBitMask"

.field public static final EXTRA_RESULT_RET:Ljava/lang/String; = "result"

.field public static final EXTRA_STATE_INFO:Ljava/lang/String; = "state"

.field public static final EXTRA_UPDATE_URL:Ljava/lang/String; = "url"

.field public static final EXTRA_WFD_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_WIFI_DISPLAY_STATUS:Ljava/lang/String; = "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

.field public static final FRIDGE:I = 0x5

.field public static final HOMESYNC_MIRROR_MOUSE:I = 0x1

.field public static final HOMESYNC_SCREEN_MIRRORING:I = 0x2

.field public static final MULTI_ANGLE_RECORDER:I = 0x4

.field public static final POPUP_CAUSE_AIRPLANE_MODE_ON:I = 0x2208c

.field public static final POPUP_CAUSE_ALERT_RESTART:I = 0x22073

.field public static final POPUP_CAUSE_BLUETOOTH_OR_EARPHONE_ON:I = 0x2207c

.field public static final POPUP_CAUSE_CONNECTING:I = 0x2208a

.field public static final POPUP_CAUSE_CONNECTION_DISCONNECT:I = 0x2207b

.field public static final POPUP_CAUSE_DIALOG_ERROR_CONNECT_FAILED:I = 0x2208b

.field public static final POPUP_CAUSE_DONGLE_UPDATE:I = 0x22078

.field public static final POPUP_CAUSE_DONGLE_UPDATE_RESULT:I = 0x22079

.field public static final POPUP_CAUSE_EARPHONE_OR_BT_CONNECTED:I = 0x2208e

.field public static final POPUP_CAUSE_HDMI_BUSY:I = 0x22074

.field public static final POPUP_CAUSE_HDMI_CONNECTED:I = 0x2208d

.field public static final POPUP_CAUSE_HOTSPOT_BUSY:I = 0x22075

.field public static final POPUP_CAUSE_INVALID_HDCP_KEY:I = 0x22081

.field public static final POPUP_CAUSE_LIMITED_PLAYBACK_ENABLED:I = 0x22086

.field public static final POPUP_CAUSE_LIMITED_RECORDING_ENABLED:I = 0x22087

.field public static POPUP_CAUSE_OXYGEN_NETWORK_ENABLED:I = 0x0

.field public static final POPUP_CAUSE_P2P_BUSY:I = 0x22072

.field public static final POPUP_CAUSE_POWER_SAVING_ENABLED:I = 0x22084

.field public static final POPUP_CAUSE_POWER_SAVING_MODE_ENABLED:I = 0x22088

.field public static POPUP_CAUSE_SCANNING_BYNFC:I = 0x0

.field public static final POPUP_CAUSE_SIDE_SYNC_RUNNING:I = 0x22085

.field public static final POPUP_CAUSE_TERMINATE:I = 0x22070

.field public static final PRIMARY_DEVICE_TYPE:I = 0x3

.field public static final REMOTE_VIEWFINDER:I = 0x0

.field public static final SETPARAM_TYPE_WFD_ENGINE:I = 0x1388

.field public static final SETPARAM_TYPE_WFD_SERVICE:I = 0x1389

.field public static final SIDE_SYNC:I = 0x3

.field public static final SS_WFD_SERVICE:Z = true

.field public static final SS_WFD_SERVICE_WITH_DLNA:Z = true

.field private static final TAG:Ljava/lang/String; = "DisplayManager"

.field public static final UPDATE_RESOURCES:I = 0x22080

.field public static final VIRTUAL_DISPLAY_FLAG_ALLOCATE_HWC:I = 0x200000

.field public static final VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR:I = 0x10

.field public static final VIRTUAL_DISPLAY_FLAG_H_FLIP:I = 0x400000

.field public static final VIRTUAL_DISPLAY_FLAG_OWN_CONTENT_ONLY:I = 0x8

.field public static final VIRTUAL_DISPLAY_FLAG_PARTIAL_MIRROR:I = 0x100000

.field public static final VIRTUAL_DISPLAY_FLAG_PRESENTATION:I = 0x2

.field public static final VIRTUAL_DISPLAY_FLAG_PUBLIC:I = 0x1

.field public static final VIRTUAL_DISPLAY_FLAG_SECURE:I = 0x4

.field public static final VIRTUAL_DISPLAY_FLAG_SUPPORTS_PROTECTED_BUFFERS:I = 0x20

.field public static final VIRTUAL_DISPLAY_FLAG_VIRTUAL_SCREEN:I = 0x40

.field public static final WIFIDISPLAY_DETACH_SETTINGS:Ljava/lang/String; = "android.intent.action.DETACH_WIFIDISPLAY_SETTINGS"

.field public static final WIFIDISPLAY_DETACH_WFD_BROKER:Ljava/lang/String; = "android.intent.action.DETACH_WFD_BROKER"

.field public static final WIFIDISPLAY_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final WIFIDISPLAY_NOTI_CONNECTION_MODE:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

.field public static final WIFIDISPLAY_NOTI_ERROR_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

.field public static final WIFIDISPLAY_NOTI_HDCP_INFO_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_NOTI_HDCP_INFO_FROM_NATIVE"

.field public static final WIFIDISPLAY_PARAM_CHANGED_NOTIFICATION:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_PARAM_CHANGED"

.field public static final WIFIDISPLAY_RESOLUTION_FROM_APP:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_REQ"

.field public static final WIFIDISPLAY_RESOLUTION_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_RES_FROM_NATIVE"

.field public static final WIFIDISPLAY_SESSION_STATE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY"

.field public static final WIFIDISPLAY_UPDATE_INPUT_FROM_APP:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

.field public static final WIFIDISPLAY_UPDATE_URL_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

.field public static final WIFIDISPLAY_WEAK_NETWORK:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_WEAK_NETWORK"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

.field private final mLock:Ljava/lang/Object;

.field private final mTempDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiDisplayUtil:Landroid/hardware/display/SecWifiDisplayUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const v0, 0x2208f

    sput v0, Landroid/hardware/display/DisplayManager;->POPUP_CAUSE_SCANNING_BYNFC:I

    const v0, 0x22090

    sput v0, Landroid/hardware/display/DisplayManager;->POPUP_CAUSE_OXYGEN_NETWORK_ENABLED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mDisplays:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    new-instance v0, Landroid/hardware/display/SecWifiDisplayUtil;

    invoke-direct {v0, p1}, Landroid/hardware/display/SecWifiDisplayUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mWifiDisplayUtil:Landroid/hardware/display/SecWifiDisplayUtil;

    return-void
.end method

.method private addAllDisplaysLocked(Ljava/util/ArrayList;[I)V
    .locals 4
    .param p2, "displayIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/Display;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .local p1, "displays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget v2, p2, v1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplayLocked(IZ)Landroid/view/Display;

    move-result-object v0

    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v2

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "display":Landroid/view/Display;
    :cond_1
    return-void
.end method

.method private addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V
    .locals 4
    .param p2, "displayIds"    # [I
    .param p3, "matchType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/Display;",
            ">;[II)V"
        }
    .end annotation

    .prologue
    .local p1, "displays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget v2, p2, v1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplayLocked(IZ)Landroid/view/Display;

    move-result-object v0

    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v2

    if-ne v2, p3, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "display":Landroid/view/Display;
    :cond_1
    return-void
.end method

.method private getOrCreateDisplayLocked(IZ)Landroid/view/Display;
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "assumeValid"    # Z

    .prologue
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez p2, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkExceptionalCase()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mWifiDisplayUtil:Landroid/hardware/display/SecWifiDisplayUtil;

    if-eqz v0, :cond_0

    const-string v0, "DisplayManager"

    const-string v1, "checkExceptionalCase"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mWifiDisplayUtil:Landroid/hardware/display/SecWifiDisplayUtil;

    invoke-virtual {v0}, Landroid/hardware/display/SecWifiDisplayUtil;->checkExceptionalCase()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public checkScreenSharingSupported()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public connectWifiDisplay(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->connectWifiDisplay(Ljava/lang/String;)V

    return-void
.end method

.method public connectWifiDisplayWithMode(ILjava/lang/String;)V
    .locals 1
    .param p1, "connectingMode"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->connectWifiDisplayWithMode(ILjava/lang/String;)V

    return-void
.end method

.method public connectWifiDisplayWithMode(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "connectingMode"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "isPendingRequest"    # Z

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/display/DisplayManagerGlobal;->connectWifiDisplayWithMode(ILjava/lang/String;Z)V

    return-void
.end method

.method public connectWifiDisplayWithPin(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->connectWifiDisplayWithPin(Ljava/lang/String;)V

    return-void
.end method

.method public createVirtualDisplay(Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 11
    .param p1, "projection"    # Landroid/media/projection/MediaProjection;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "densityDpi"    # I
    .param p6, "surface"    # Landroid/view/Surface;
    .param p7, "flags"    # I
    .param p8, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p9, "handler"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    return-object v0
.end method

.method public createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I
    .param p5, "surface"    # Landroid/view/Surface;
    .param p6, "flags"    # I

    .prologue
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    return-object v0
.end method

.method public createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I
    .param p5, "surface"    # Landroid/view/Surface;
    .param p6, "flags"    # I
    .param p7, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p8, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    return-object v0
.end method

.method public disableWifiDisplay()V
    .locals 3

    .prologue
    const-string v0, "DisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "For Debugging : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->disableWifiDisplay()V

    return-void
.end method

.method public disconnectForMirroringSwitching()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->disconnectForMirroringSwitching()V

    return-void
.end method

.method public disconnectWifiDisplay()V
    .locals 2

    .prologue
    const-string v0, "DisplayManager"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->disconnectWifiDisplay()V

    return-void
.end method

.method public enableWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .locals 1
    .param p1, "sinkDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "deviceType"    # I

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->enableWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    return-void
.end method

.method public enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/display/DisplayManagerGlobal;->enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;
    .param p5, "deviceName"    # Ljava/lang/String;
    .param p6, "remoteP2pMacAddr"    # Ljava/lang/String;
    .param p7, "isPendingRequest"    # Z

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/display/DisplayManagerGlobal;->enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->forgetWifiDisplay(Ljava/lang/String;)V

    return-void
.end method

.method public getActiveDLNADevice()Landroid/hardware/display/DLNADevice;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getActiveDLNADevice()Landroid/hardware/display/DLNADevice;

    move-result-object v0

    return-object v0
.end method

.method public getActiveDLNAState()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getActiveDLNAState()I

    move-result v0

    return v0
.end method

.method public getDLNADeviceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getActiveDLNADevice()Landroid/hardware/display/DLNADevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getActiveDLNADevice()Landroid/hardware/display/DLNADevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DLNADevice;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDLNADeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getActiveDLNADevice()Landroid/hardware/display/DLNADevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getActiveDLNADevice()Landroid/hardware/display/DLNADevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DLNADevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDLNADeviceUid()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getActiveDLNADevice()Landroid/hardware/display/DLNADevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getActiveDLNADevice()Landroid/hardware/display/DLNADevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DLNADevice;->getUid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDLNAType()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getActiveDLNADevice()Landroid/hardware/display/DLNADevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getActiveDLNADevice()Landroid/hardware/display/DLNADevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DLNADevice;->getDLNAType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDisplay(I)Landroid/view/Display;
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplayLocked(IZ)Landroid/view/Display;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDisplays()[Landroid/view/Display;
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getDisplays(Ljava/lang/String;)[Landroid/view/Display;
    .locals 4
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v0

    .local v0, "displayIds":[I
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez p1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Landroid/hardware/display/DisplayManager;->addAllDisplaysLocked(Ljava/util/ArrayList;[I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/view/Display;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/Display;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :cond_1
    :try_start_2
    const-string v1, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {p0, v1, v0, v3}, Landroid/hardware/display/DisplayManager;->addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v0, v3}, Landroid/hardware/display/DisplayManager;->addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {p0, v1, v0, v3}, Landroid/hardware/display/DisplayManager;->addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {p0, v1, v0, v3}, Landroid/hardware/display/DisplayManager;->addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public getLastConnectedDLNADevice()Landroid/hardware/display/DLNADevice;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getLastConnectedDLNADevice()Landroid/hardware/display/DLNADevice;

    move-result-object v0

    return-object v0
.end method

.method public getLastConnectedDisplay(Z)Landroid/hardware/display/WifiDisplay;
    .locals 1
    .param p1, "cancel"    # Z

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getLastConnectedDisplay(Z)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    return-object v0
.end method

.method public getScreenSharingStatus()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getScreenSharingStatus()I

    move-result v0

    return v0
.end method

.method public getWifiDisplayBridgeStatus()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getWifiDisplayBridgeStatus()I

    move-result v0

    return v0
.end method

.method public getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    return-object v0
.end method

.method public hasContent(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->hasContent(I)Z

    move-result v0

    return v0
.end method

.method public isAuSLServiceRunning()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mWifiDisplayUtil:Landroid/hardware/display/SecWifiDisplayUtil;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->isKDDIServiceConnected()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnWithPinSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->isConnWithPinSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDLNADeviceConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getActiveDLNAState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDongleRenameAvailable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->isDongleRenameAvailable()Z

    move-result v0

    return v0
.end method

.method public isSinkAvailable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->isSinkAvailable()Z

    move-result v0

    return v0
.end method

.method public isSourceAvailable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->isSourceAvailable()Z

    move-result v0

    return v0
.end method

.method public isWfdEngineRunning()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->isWfdEngineRunning()Z

    move-result v0

    return v0
.end method

.method public isWifiDisplayBridgeAvailable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->isWifiDisplayBridgeAvailable()Z

    move-result v0

    return v0
.end method

.method public notifyEnterHomeSyncApp()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->notifyEnterHomeSyncApp()V

    return-void
.end method

.method public notifyExitHomeSyncApp()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->notifyExitHomeSyncApp()V

    return-void
.end method

.method public pauseWifiDisplay()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->pauseWifiDisplay()V

    return-void
.end method

.method public registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public registerDisplayListener(Landroid/hardware/display/ExtendedDisplayListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/display/ExtendedDisplayListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/ExtendedDisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public removeLastConnectedDLNADevice()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->removeLastConnectedDLNADevice()V

    return-void
.end method

.method public renameDongle(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->renameDongle(Ljava/lang/String;)V

    return-void
.end method

.method public renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public restartWifiDisplay()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->restartWifiDisplay()V

    return-void
.end method

.method public resumeWifiDisplay()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->resumeWifiDisplay()V

    return-void
.end method

.method public scanWifiDisplays()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->scanWifiDisplays()V

    return-void
.end method

.method public setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V
    .locals 3
    .param p1, "state"    # Landroid/hardware/display/DisplayManager$WfdAppState;

    .prologue
    const-string v0, "DisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "For Debugging : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActivityState to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager$WfdAppState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mWifiDisplayUtil:Landroid/hardware/display/SecWifiDisplayUtil;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mWifiDisplayUtil:Landroid/hardware/display/SecWifiDisplayUtil;

    invoke-virtual {v0, p1}, Landroid/hardware/display/SecWifiDisplayUtil;->setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V

    :cond_0
    return-void
.end method

.method public setParameter(IILjava/lang/String;)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "param1"    # I
    .param p3, "param2"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/display/DisplayManagerGlobal;->setParameter(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setScanningChannel(I)V
    .locals 1
    .param p1, "requestedChannel"    # I

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setScanningChannel(I)V

    return-void
.end method

.method public setScreenSharingStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    const-string v0, "DisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenSharingStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setScreenSharingStatus(I)V

    return-void
.end method

.method public startWifiDisplayScan()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->startWifiDisplayScan()V

    return-void
.end method

.method public stopScanWifiDisplays()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->stopScanWifiDisplays()V

    return-void
.end method

.method public stopWifiDisplayScan()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->stopWifiDisplayScan()V

    return-void
.end method

.method public unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public unregisterDisplayListener(Landroid/hardware/display/ExtendedDisplayListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/display/ExtendedDisplayListener;

    .prologue
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDisplayListener(Landroid/hardware/display/ExtendedDisplayListener;)V

    return-void
.end method
