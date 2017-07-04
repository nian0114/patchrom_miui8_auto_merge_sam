.class public interface abstract Landroid/app/IVRManager;
.super Ljava/lang/Object;
.source "IVRManager.java"


# static fields
.field public static final HMT_EVENT_ABNORMAL:I = 0x4

.field public static final HMT_EVENT_DOCK:I = 0x1

.field public static final HMT_EVENT_MOUNT:I = 0x10

.field public static final HMT_EVENT_SENSOR_BOOTING_WITHOUT_TA:I = 0x100

.field public static final HMT_EVENT_SENSOR_BOOTING_WITH_TA:I = 0x200

.field public static final HMT_EVENT_SENSOR_CONNECTED_TA:I = 0x400

.field public static final HMT_EVENT_UNDOCK:I = 0x2

.field public static final HMT_EVENT_UNMOUNT:I = 0x20

.field public static final VR_API_VERSION_CODE:I = 0xb

.field public static final VR_BRIGHTNESS:Ljava/lang/String; = "bright"

.field public static final VR_COMFORT_VIEW:Ljava/lang/String; = "comfortable_view"

.field public static final VR_DO_NOT_DISTURB:Ljava/lang/String; = "do_not_disturb_mode"

.field public static final VR_MANAGER:Ljava/lang/String; = "vr"

.field public static final VR_OPTION_IPD:Ljava/lang/String; = "ipd"

.field public static final VR_SYSTEM_EPEN_ENABLED:Ljava/lang/String; = "epen_enabled"

.field public static final VR_SYSTEM_MOUSE_CONTROL_TYPE:Ljava/lang/String; = "mouse_control_type"

.field public static final VR_SYSTEM_SHOW_MOUSE_POINTER:Ljava/lang/String; = "show_mouse_pointer"

.field public static final VR_SYSTEM_TOUCHKEY_ENABLED:Ljava/lang/String; = "touchkey_enabled"

.field public static final VR_SYSTEM_TSP_ENABLED:Ljava/lang/String; = "tsp_enabled"


# virtual methods
.method public abstract GetPowerLevelState()I
.end method

.method public abstract SetVrClocks(Ljava/lang/String;II)[I
.end method

.method public abstract enforceCallingSelfPermission(Ljava/lang/String;)V
.end method

.method public abstract getOption(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSystemOption(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getVRBright()I
.end method

.method public abstract getVRColorTemperature()I
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isVRComfortableViewEnabled()Z
.end method

.method public abstract isVRDarkAdaptationEnabled()Z
.end method

.method public abstract isVRLowPersistenceEnabled()Z
.end method

.method public abstract isVRMode()Z
.end method

.method public abstract relFreq(Ljava/lang/String;)Z
.end method

.method public abstract releaseCPUMhz(Ljava/lang/String;)V
.end method

.method public abstract releaseGPUMhz(Ljava/lang/String;)V
.end method

.method public abstract return2EnableFreqLev()[I
.end method

.method public abstract setAffinity(I[I)I
.end method

.method public abstract setCPUClockMhz(Ljava/lang/String;[II)[I
.end method

.method public abstract setGPUClockMhz(Ljava/lang/String;I)I
.end method

.method public abstract setOption(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setThreadSchedFifo(Ljava/lang/String;III)Z
.end method

.method public abstract setVRBright(I)V
.end method

.method public abstract setVRColorTemperature(I)V
.end method

.method public abstract setVRComfortableView(Z)V
.end method

.method public abstract setVRDarkAdaptation(Z)V
.end method

.method public abstract setVRLowPersistence(Z)V
.end method

.method public abstract setVRMode(Z)V
.end method

.method public abstract setVideoMode(Ljava/lang/String;FZ)Z
.end method

.method public abstract vrManagerVersion()Ljava/lang/String;
.end method

.method public abstract vrOVRVersion()Ljava/lang/String;
.end method
