.class public Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;
.super Landroid/app/enterprise/remotecontrol/IRemoteInjection$Stub;
.source "RemoteInjectionService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field static final TAG:Ljava/lang/String; = "RemoteInjection"

.field private static mSelf:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;


# instance fields
.field final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field mRemoteControlDisabled:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteScreenHeight:I

.field private mRemoteScreenWidth:I

.field private mSessionOwnerUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mSelf:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0}, Landroid/app/enterprise/remotecontrol/IRemoteInjection$Stub;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .local v1, "orientation":I
    if-eqz v1, :cond_0

    if-ne v1, v3, :cond_2

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_3

    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mSessionOwnerUid:I

    sput-object p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mSelf:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    goto :goto_1
.end method

.method private enforceRemoteControlPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_REMOTE_CONTROL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSystemUser()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mSelf:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    return-object v0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method

.method private injectKeyEventInternal(Landroid/view/KeyEvent;Z)Z
    .locals 16
    .param p1, "ev"    # Landroid/view/KeyEvent;
    .param p2, "sync"    # Z

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    .local v2, "downTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    .local v4, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    .local v6, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    .local v7, "code":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    .local v8, "repeatCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v9

    .local v9, "metaState":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    .local v10, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v11

    .local v11, "scancode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v13

    .local v13, "source":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    .local v0, "flags":I
    if-nez v13, :cond_0

    const/16 v13, 0x101

    :cond_0
    const-wide/16 v14, 0x0

    cmp-long v12, v4, v14

    if-nez v12, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    :cond_1
    const-wide/16 v14, 0x0

    cmp-long v12, v2, v14

    if-nez v12, :cond_2

    move-wide v2, v4

    :cond_2
    new-instance v1, Landroid/view/KeyEvent;

    or-int/lit8 v12, v0, 0x8

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .local v1, "newEvent":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v14

    if-eqz p2, :cond_3

    const/4 v12, 0x2

    :goto_0
    invoke-virtual {v14, v1, v12}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v12

    return v12

    :cond_3
    const/4 v12, 0x1

    goto :goto_0
.end method

.method private injectPointerEventInternal(Landroid/view/MotionEvent;Z)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sync"    # Z

    .prologue
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .local v0, "newEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v1

    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private injectTrackballEventInternal(Landroid/view/MotionEvent;Z)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sync"    # Z

    .prologue
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .local v0, "newEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    const v1, 0x10004

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v1

    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isRemoteControlDisabledInternal(II)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "callerUid"    # I

    .prologue
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .local v0, "callerUserId":I
    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .local v1, "disabled":Ljava/lang/Boolean;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    .end local v1    # "disabled":Ljava/lang/Boolean;
    :goto_0
    return v2

    .restart local v1    # "disabled":Ljava/lang/Boolean;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .end local v1    # "disabled":Ljava/lang/Boolean;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isRemoteInjectionDisabled(I)Z
    .locals 7
    .param p1, "callerUid"    # I

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlDisabledInternal(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "RemoteInjection"

    const-string v5, "Failed to get top activity user id"

    invoke-static {v1, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v1, v4

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 29
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    .local v20, "display":Landroid/view/Display;
    invoke-virtual/range {v20 .. v20}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-float v0, v4

    move/from16 v22, v0

    .local v22, "hwWidth":F
    invoke-virtual/range {v20 .. v20}, Landroid/view/Display;->getHeight()I

    move-result v4

    int-to-float v0, v4

    move/from16 v21, v0

    .local v21, "hwHeight":F
    invoke-virtual/range {v20 .. v20}, Landroid/view/Display;->getRotation()I

    move-result v24

    .local v24, "orientation":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .local v9, "pointerCount":I
    if-eqz v24, :cond_0

    const/4 v4, 0x2

    move/from16 v0, v24

    if-ne v0, v4, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    int-to-float v0, v4

    move/from16 v28, v0

    .local v28, "remoteWidth":F
    :goto_0
    if-eqz v24, :cond_1

    const/4 v4, 0x2

    move/from16 v0, v24

    if-ne v0, v4, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    int-to-float v0, v4

    move/from16 v27, v0

    .local v27, "remoteHeight":F
    :goto_1
    new-array v11, v9, [Landroid/view/MotionEvent$PointerCoords;

    .local v11, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    new-array v10, v9, [Landroid/view/MotionEvent$PointerProperties;

    .local v10, "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    new-instance v25, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v25 .. v25}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .local v25, "ppCoords":Landroid/view/MotionEvent$PointerCoords;
    new-instance v26, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct/range {v26 .. v26}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .local v26, "ppProperties":Landroid/view/MotionEvent$PointerProperties;
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_2
    move/from16 v0, v23

    if-ge v0, v9, :cond_4

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    move-object/from16 v0, v25

    iget v4, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    div-float v5, v22, v28

    mul-float/2addr v4, v5

    move-object/from16 v0, v25

    iput v4, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, v25

    iget v4, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    div-float v5, v21, v27

    mul-float/2addr v4, v5

    move-object/from16 v0, v25

    iput v4, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    aput-object v25, v11, v23

    aput-object v26, v10, v23

    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .end local v10    # "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v11    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v23    # "i":I
    .end local v25    # "ppCoords":Landroid/view/MotionEvent$PointerCoords;
    .end local v26    # "ppProperties":Landroid/view/MotionEvent$PointerProperties;
    .end local v27    # "remoteHeight":F
    .end local v28    # "remoteWidth":F
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    int-to-float v0, v4

    move/from16 v28, v0

    goto :goto_0

    .restart local v28    # "remoteWidth":F
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    int-to-float v0, v4

    move/from16 v27, v0

    goto :goto_1

    .restart local v10    # "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    .restart local v11    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    .restart local v23    # "i":I
    .restart local v25    # "ppCoords":Landroid/view/MotionEvent$PointerCoords;
    .restart local v26    # "ppProperties":Landroid/view/MotionEvent$PointerProperties;
    .restart local v27    # "remoteHeight":F
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v19

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public allowRemoteControl(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    const/4 v2, 0x0

    .local v2, "retVal":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->enforceRemoteControlPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "callerUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "allowRemoteControl"

    invoke-virtual {v6, v0, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .local v3, "userId":I
    iget-object v7, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "userId":I
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    return v2

    .restart local v3    # "userId":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .end local v3    # "userId":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "RemoteInjection"

    const-string v7, "RemoteInjection.allowRemoteControl() exception : "

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/KeyEvent;
    .param p2, "sync"    # Z

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v12, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .local v7, "callerUid":I
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .local v6, "userId":I
    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, "token":J
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "RemoteInjectionService"

    const-string v5, "Remotely injecting a keystroke event into the UI failed"

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v9, v12

    :goto_0
    return v9

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .end local v10    # "token":J
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_REMOTE_CONTROL"

    const-string v4, "Remote Control"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .restart local v10    # "token":J
    const/4 v9, 0x0

    .local v9, "ret":Z
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "RemoteInjection"

    const-string v3, "Remote Control is disabled, couldnt inject key event"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "RemoteInjectionService"

    const-string v5, "Remotely injecting a keystroke event into the UI failed"

    move v2, v12

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectKeyEventInternal(Landroid/view/KeyEvent;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    :goto_1
    if-eqz v9, :cond_2

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "RemoteInjectionService"

    const-string v5, "Remotely injecting a keystroke event into the UI succeeded"

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :goto_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    const-string v2, "RemoteInjection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error injecting trackball event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "RemoteInjectionService"

    const-string v5, "Remotely injecting a keystroke event into the UI failed"

    move v2, v12

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .locals 16
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sync"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_REMOTE_CONTROL"

    const-string v4, "Remote Control"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .local v9, "callerUid":I
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "token":J
    const/4 v11, 0x0

    .local v11, "ret":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "RemoteInjection"

    const-string v3, "Remote Control is disabled, couldnt inject pointer event"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RemoteInjectionService"

    const-string v7, "Remotely injecting a pointer (touch) event into the UI failed"

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v12, v11

    .end local v11    # "ret":Z
    .local v12, "ret":I
    :goto_0
    return v12

    .end local v12    # "ret":I
    .restart local v11    # "ret":Z
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    .local v13, "tev":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v13, v1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectPointerEventInternal(Landroid/view/MotionEvent;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .end local v13    # "tev":Landroid/view/MotionEvent;
    :goto_1
    if-eqz v11, :cond_1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RemoteInjectionService"

    const-string v7, "Remotely injecting a pointer (touch) event into the UI succeeded"

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :goto_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v12, v11

    .restart local v12    # "ret":I
    goto :goto_0

    .end local v12    # "ret":I
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "RemoteInjection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error injecting trackball event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RemoteInjectionService"

    const-string v7, "Remotely injecting a pointer (touch) event into the UI failed"

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .locals 16
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sync"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_REMOTE_CONTROL"

    const-string v4, "Remote Control"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .local v9, "callerUid":I
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "token":J
    const/4 v11, 0x0

    .local v11, "ret":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "RemoteInjection"

    const-string v3, "Remote Control is disabled, couldnt inject track ball event"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RemoteInjectionService"

    const-string v7, "Remotely injecting a trackball event into the UI failed"

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v12, v11

    .end local v11    # "ret":Z
    .local v12, "ret":I
    :goto_0
    return v12

    .end local v12    # "ret":I
    .restart local v11    # "ret":Z
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    .local v13, "tev":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v13, v1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectTrackballEventInternal(Landroid/view/MotionEvent;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .end local v13    # "tev":Landroid/view/MotionEvent;
    :goto_1
    if-eqz v11, :cond_1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RemoteInjectionService"

    const-string v7, "Remotely injecting a trackball event into the UI succeeded"

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :goto_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v12, v11

    .restart local v12    # "ret":I
    goto :goto_0

    .end local v12    # "ret":I
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "RemoteInjection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error injecting trackball event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RemoteInjectionService"

    const-string v7, "Remotely injecting a trackball event into the UI failed"

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public isRemoteControlAllowed(I)Z
    .locals 8
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x1

    .local v2, "ret":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "allowRemoteControl"

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .local v3, "value":Z
    if-nez v3, :cond_0

    move v2, v3

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Z
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "RemoteInjection"

    const-string v6, "RemoteInjection.isRemoteControlAllowed() exception : "

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isRemoteControlAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    move-result v1

    return v1
.end method

.method public isRemoteControlDisabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mSessionOwnerUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mSessionOwnerUid:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlDisabledInternal(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public systemReady()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;-><init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public updateRemoteScreenDimensionsAndCallerUid(III)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "uid"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->enforceSystemUser()V

    const-string v0, "RemoteInjection"

    const-string v1, "RemoteInjectionService: updateRemoteScreenDimensions()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    iput p2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    iput p3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mSessionOwnerUid:I

    return-void
.end method
