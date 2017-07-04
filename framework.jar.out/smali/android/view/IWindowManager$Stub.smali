.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final TRANSACTION_addAppToken:I = 0x16

.field static final TRANSACTION_addWindowToken:I = 0x13

.field static final TRANSACTION_addWindowTokenWithDisplayId:I = 0x15

.field static final TRANSACTION_changeDisplayScale:I = 0x65

.field static final TRANSACTION_clearForcedDisplayDensity:I = 0xd

.field static final TRANSACTION_clearForcedDisplaySize:I = 0x9

.field static final TRANSACTION_clearWindowContentFrameStats:I = 0x55

.field static final TRANSACTION_closeSystemDialogs:I = 0x38

.field static final TRANSACTION_cocktailBarVisibilityChanged:I = 0x68

.field static final TRANSACTION_disableKeyguard:I = 0x2e

.field static final TRANSACTION_dismissKeyguard:I = 0x36

.field static final TRANSACTION_dispatchSmartClipRemoteRequest:I = 0x64

.field static final TRANSACTION_enableScreenIfNeeded:I = 0x54

.field static final TRANSACTION_executeAppTransition:I = 0x23

.field static final TRANSACTION_exitKeyguardSecurely:I = 0x30

.field static final TRANSACTION_freezeRotation:I = 0x4a

.field static final TRANSACTION_getAnimationScale:I = 0x39

.field static final TRANSACTION_getAnimationScales:I = 0x3a

.field static final TRANSACTION_getAppOrientation:I = 0x19

.field static final TRANSACTION_getBaseDisplayDensity:I = 0xb

.field static final TRANSACTION_getBaseDisplaySize:I = 0x7

.field static final TRANSACTION_getCocktailBarFrame:I = 0x6a

.field static final TRANSACTION_getCurrentAnimatorScale:I = 0x3d

.field static final TRANSACTION_getInitialDisplayDensity:I = 0xa

.field static final TRANSACTION_getInitialDisplaySize:I = 0x6

.field static final TRANSACTION_getKeyguardPreviewLayoutResId:I = 0x6e

.field static final TRANSACTION_getPendingAppTransition:I = 0x1c

.field static final TRANSACTION_getPreferredOptionsPanelGravity:I = 0x48

.field static final TRANSACTION_getPreferredOptionsPanelGravityTablet:I = 0x49

.field static final TRANSACTION_getRotation:I = 0x45

.field static final TRANSACTION_getWindowContentFrameStats:I = 0x56

.field static final TRANSACTION_hasNavigationBar:I = 0x51

.field static final TRANSACTION_inKeyguardRestrictedInputMode:I = 0x34

.field static final TRANSACTION_inputMethodClientHasFocus:I = 0x5

.field static final TRANSACTION_isCarModeBarVisible:I = 0x5e

.field static final TRANSACTION_isKeyguardLocked:I = 0x31

.field static final TRANSACTION_isKeyguardSecure:I = 0x32

.field static final TRANSACTION_isKeyguardShowingAndNotOccluded:I = 0x33

.field static final TRANSACTION_isKeyguardShowingAndOccluded:I = 0x35

.field static final TRANSACTION_isMetaKeyEventRequested:I = 0x62

.field static final TRANSACTION_isNavigationBarVisible:I = 0x5d

.field static final TRANSACTION_isRotationFrozen:I = 0x4c

.field static final TRANSACTION_isSafeModeEnabled:I = 0x53

.field static final TRANSACTION_isStatusBarVisible:I = 0x5c

.field static final TRANSACTION_isSystemKeyEventRequested:I = 0x60

.field static final TRANSACTION_isViewServerRunning:I = 0x3

.field static final TRANSACTION_keyguardGoingAway:I = 0x37

.field static final TRANSACTION_lockNow:I = 0x52

.field static final TRANSACTION_openSession:I = 0x4

.field static final TRANSACTION_overridePendingAppTransition:I = 0x1d

.field static final TRANSACTION_overridePendingAppTransitionAspectScaledThumb:I = 0x21

.field static final TRANSACTION_overridePendingAppTransitionClipReveal:I = 0x1f

.field static final TRANSACTION_overridePendingAppTransitionInPlace:I = 0x22

.field static final TRANSACTION_overridePendingAppTransitionScaleUp:I = 0x1e

.field static final TRANSACTION_overridePendingAppTransitionThumb:I = 0x20

.field static final TRANSACTION_overridePendingAppTransitionTranslate:I = 0x69

.field static final TRANSACTION_pauseKeyDispatching:I = 0x10

.field static final TRANSACTION_prepareAppTransition:I = 0x1b

.field static final TRANSACTION_reenableKeyguard:I = 0x2f

.field static final TRANSACTION_registerEasyOneHandWatcher:I = 0x66

.field static final TRANSACTION_removeAdaptiveEvent:I = 0x58

.field static final TRANSACTION_removeAppToken:I = 0x29

.field static final TRANSACTION_removeRotationWatcher:I = 0x47

.field static final TRANSACTION_removeWindowToken:I = 0x14

.field static final TRANSACTION_requestAssistScreenshot:I = 0x4d

.field static final TRANSACTION_requestMetaKeyEvent:I = 0x61

.field static final TRANSACTION_requestSystemKeyEvent:I = 0x5f

.field static final TRANSACTION_resumeKeyDispatching:I = 0x11

.field static final TRANSACTION_screenshotApplications:I = 0x4e

.field static final TRANSACTION_setAdaptiveEvent:I = 0x57

.field static final TRANSACTION_setAnimationScale:I = 0x3b

.field static final TRANSACTION_setAnimationScales:I = 0x3c

.field static final TRANSACTION_setAppOrientation:I = 0x18

.field static final TRANSACTION_setAppStartingWindow:I = 0x24

.field static final TRANSACTION_setAppTask:I = 0x17

.field static final TRANSACTION_setAppVisibility:I = 0x26

.field static final TRANSACTION_setAppWillBeHidden:I = 0x25

.field static final TRANSACTION_setBendedPendingIntent:I = 0x5a

.field static final TRANSACTION_setBendedPendingIntentInSecure:I = 0x5b

.field static final TRANSACTION_setCurrentInputMethodClient:I = 0x63

.field static final TRANSACTION_setEventDispatching:I = 0x12

.field static final TRANSACTION_setFocusedApp:I = 0x1a

.field static final TRANSACTION_setForcedDisplayDensity:I = 0xc

.field static final TRANSACTION_setForcedDisplayDensityNoFreeze:I = 0x44

.field static final TRANSACTION_setForcedDisplayScalingMode:I = 0xe

.field static final TRANSACTION_setForcedDisplaySize:I = 0x8

.field static final TRANSACTION_setInTouchMode:I = 0x3e

.field static final TRANSACTION_setKeyguardPreview:I = 0x6d

.field static final TRANSACTION_setNewConfiguration:I = 0x2b

.field static final TRANSACTION_setOverscan:I = 0xf

.field static final TRANSACTION_setReverseStartingWindowContentView:I = 0x6c

.field static final TRANSACTION_setScreenCaptureDisabled:I = 0x41

.field static final TRANSACTION_setStartingWindowContentView:I = 0x6b

.field static final TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x40

.field static final TRANSACTION_showStrictModeViolation:I = 0x3f

.field static final TRANSACTION_startAppFreezingScreen:I = 0x27

.field static final TRANSACTION_startFreezingScreen:I = 0x2c

.field static final TRANSACTION_startViewServer:I = 0x1

.field static final TRANSACTION_statusBarVisibilityChanged:I = 0x4f

.field static final TRANSACTION_statusBarVisibilityChangedToDisplay:I = 0x50

.field static final TRANSACTION_stopAppFreezingScreen:I = 0x28

.field static final TRANSACTION_stopFreezingScreen:I = 0x2d

.field static final TRANSACTION_stopViewServer:I = 0x2

.field static final TRANSACTION_thawRotation:I = 0x4b

.field static final TRANSACTION_unregisterEasyOneHandWatcher:I = 0x67

.field static final TRANSACTION_updateAdaptiveEvent:I = 0x59

.field static final TRANSACTION_updateCurrentUserPolicy:I = 0x6f

.field static final TRANSACTION_updateDisplay:I = 0x43

.field static final TRANSACTION_updateOrientationFromAppTokens:I = 0x2a

.field static final TRANSACTION_updateRotation:I = 0x42

.field static final TRANSACTION_updateTspViewPolicy:I = 0x70

.field static final TRANSACTION_watchRotation:I = 0x46


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.view.IWindowManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindowManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/view/IWindowManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/view/IWindowManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 1367
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 47
    :sswitch_0
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result v13

    .line 56
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v13, :cond_0

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    const/4 v1, 0x1

    goto :goto_0

    .line 57
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 62
    .end local v2    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_2
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result v13

    .line 64
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v13, :cond_1

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v1, 0x1

    goto :goto_0

    .line 65
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 70
    .end local v13    # "_result":Z
    :sswitch_3
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result v13

    .line 72
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v13, :cond_2

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    const/4 v1, 0x1

    goto :goto_0

    .line 73
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 78
    .end local v13    # "_result":Z
    :sswitch_4
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSessionCallback;

    move-result-object v2

    .line 82
    .local v2, "_arg0":Landroid/view/IWindowSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v3

    .line 84
    .local v3, "_arg1":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v4

    .line 85
    .local v4, "_arg2":Lcom/android/internal/view/IInputContext;
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->openSession(Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v13

    .line 86
    .local v13, "_result":Landroid/view/IWindowSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 88
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 87
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 92
    .end local v2    # "_arg0":Landroid/view/IWindowSessionCallback;
    .end local v3    # "_arg1":Lcom/android/internal/view/IInputMethodClient;
    .end local v4    # "_arg2":Lcom/android/internal/view/IInputContext;
    .end local v13    # "_result":Landroid/view/IWindowSession;
    :sswitch_5
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v2

    .line 95
    .local v2, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v13

    .line 96
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v13, :cond_4

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 97
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 102
    .end local v2    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v13    # "_result":Z
    :sswitch_6
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 106
    .local v2, "_arg0":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 107
    .local v3, "_arg1":Landroid/graphics/Point;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v3, :cond_5

    .line 110
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 116
    :goto_6
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 114
    :cond_5
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 120
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Point;
    :sswitch_7
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 124
    .restart local v2    # "_arg0":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 125
    .restart local v3    # "_arg1":Landroid/graphics/Point;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v3, :cond_6

    .line 128
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 134
    :goto_7
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 132
    :cond_6
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 138
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Point;
    :sswitch_8
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 142
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 144
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 145
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySize(III)V

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 151
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :sswitch_9
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 154
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySize(I)V

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 160
    .end local v2    # "_arg0":I
    :sswitch_a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 163
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getInitialDisplayDensity(I)I

    move-result v13

    .line 164
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 170
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getBaseDisplayDensity(I)I

    move-result v13

    .line 174
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 180
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_c
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 184
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 185
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setForcedDisplayDensity(II)V

    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 191
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 194
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->clearForcedDisplayDensity(I)V

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 200
    .end local v2    # "_arg0":I
    :sswitch_e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 204
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 205
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setForcedDisplayScalingMode(II)V

    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 211
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 215
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 217
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 219
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 221
    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg4":I
    move-object v1, p0

    .line 222
    invoke-virtual/range {v1 .. v6}, Landroid/view/IWindowManager$Stub;->setOverscan(IIIII)V

    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 228
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    :sswitch_10
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 231
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->pauseKeyDispatching(Landroid/os/IBinder;)V

    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 237
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_11
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 240
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->resumeKeyDispatching(Landroid/os/IBinder;)V

    .line 241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 246
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_12
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v2, 0x1

    .line 249
    .local v2, "_arg0":Z
    :goto_8
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 248
    .end local v2    # "_arg0":Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    .line 255
    :sswitch_13
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 259
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 260
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;I)V

    .line 261
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 266
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :sswitch_14
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 269
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;)V

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 275
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_15
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 279
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 281
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 282
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->addWindowTokenWithDisplayId(Landroid/os/IBinder;II)V

    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 288
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :sswitch_16
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 292
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v3

    .line 294
    .local v3, "_arg1":Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 296
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 298
    .restart local v5    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 300
    .restart local v6    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v7, 0x1

    .line 302
    .local v7, "_arg5":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v8, 0x1

    .line 304
    .local v8, "_arg6":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 306
    .local v9, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 308
    .local v10, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v11, 0x1

    .line 310
    .local v11, "_arg9":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v12, 0x1

    .local v12, "_arg10":Z
    :goto_c
    move-object v1, p0

    .line 311
    invoke-virtual/range {v1 .. v12}, Landroid/view/IWindowManager$Stub;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZ)V

    .line 312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 300
    .end local v7    # "_arg5":Z
    .end local v8    # "_arg6":Z
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":I
    .end local v11    # "_arg9":Z
    .end local v12    # "_arg10":Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_9

    .line 302
    .restart local v7    # "_arg5":Z
    :cond_9
    const/4 v8, 0x0

    goto :goto_a

    .line 308
    .restart local v8    # "_arg6":Z
    .restart local v9    # "_arg7":I
    .restart local v10    # "_arg8":I
    :cond_a
    const/4 v11, 0x0

    goto :goto_b

    .line 310
    .restart local v11    # "_arg9":Z
    :cond_b
    const/4 v12, 0x0

    goto :goto_c

    .line 317
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/IApplicationToken;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Z
    .end local v8    # "_arg6":Z
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":I
    .end local v11    # "_arg9":Z
    :sswitch_17
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 321
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 322
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAppTask(Landroid/os/IBinder;I)V

    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 328
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :sswitch_18
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v2

    .line 332
    .local v2, "_arg0":Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 333
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAppOrientation(Landroid/view/IApplicationToken;I)V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 339
    .end local v2    # "_arg0":Landroid/view/IApplicationToken;
    .end local v3    # "_arg1":I
    :sswitch_19
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v2

    .line 342
    .restart local v2    # "_arg0":Landroid/view/IApplicationToken;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getAppOrientation(Landroid/view/IApplicationToken;)I

    move-result v13

    .line 343
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 349
    .end local v2    # "_arg0":Landroid/view/IApplicationToken;
    .end local v13    # "_result":I
    :sswitch_1a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 353
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v3, 0x1

    .line 354
    .local v3, "_arg1":Z
    :goto_d
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setFocusedApp(Landroid/os/IBinder;Z)V

    .line 355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 353
    .end local v3    # "_arg1":Z
    :cond_c
    const/4 v3, 0x0

    goto :goto_d

    .line 360
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_1b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 364
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v3, 0x1

    .line 365
    .restart local v3    # "_arg1":Z
    :goto_e
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->prepareAppTransition(IZ)V

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 364
    .end local v3    # "_arg1":Z
    :cond_d
    const/4 v3, 0x0

    goto :goto_e

    .line 371
    .end local v2    # "_arg0":I
    :sswitch_1c
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getPendingAppTransition()I

    move-result v13

    .line 373
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 379
    .end local v13    # "_result":I
    :sswitch_1d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 385
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 387
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v5

    .line 388
    .local v5, "_arg3":Landroid/os/IRemoteCallback;
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    .line 389
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 394
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/IRemoteCallback;
    :sswitch_1e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 398
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 400
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 402
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 403
    .local v5, "_arg3":I
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionScaleUp(IIII)V

    .line 404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 409
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :sswitch_1f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 413
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 415
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 417
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 418
    .restart local v5    # "_arg3":I
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionClipReveal(IIII)V

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 424
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :sswitch_20
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    .line 427
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 433
    .local v2, "_arg0":Landroid/graphics/Bitmap;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 435
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 437
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v5

    .line 439
    .local v5, "_arg3":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v6

    .line 441
    .local v6, "_arg4":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v7, 0x1

    .restart local v7    # "_arg5":Z
    :goto_10
    move-object v1, p0

    .line 442
    invoke-virtual/range {v1 .. v7}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 430
    .end local v2    # "_arg0":Landroid/graphics/Bitmap;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/IRemoteCallback;
    .end local v6    # "_arg4":Landroid/os/IRemoteCallback;
    .end local v7    # "_arg5":Z
    :cond_e
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_f

    .line 441
    .restart local v3    # "_arg1":I
    .restart local v4    # "_arg2":I
    .restart local v5    # "_arg3":Landroid/os/IRemoteCallback;
    .restart local v6    # "_arg4":Landroid/os/IRemoteCallback;
    :cond_f
    const/4 v7, 0x0

    goto :goto_10

    .line 448
    .end local v2    # "_arg0":Landroid/graphics/Bitmap;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/IRemoteCallback;
    .end local v6    # "_arg4":Landroid/os/IRemoteCallback;
    :sswitch_21
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 451
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 457
    .restart local v2    # "_arg0":Landroid/graphics/Bitmap;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 459
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 461
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 463
    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 465
    .local v6, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v7

    .line 467
    .local v7, "_arg5":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v8

    .line 469
    .local v8, "_arg6":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v9, 0x1

    .local v9, "_arg7":Z
    :goto_12
    move-object v1, p0

    .line 470
    invoke-virtual/range {v1 .. v9}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 471
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 454
    .end local v2    # "_arg0":Landroid/graphics/Bitmap;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Landroid/os/IRemoteCallback;
    .end local v8    # "_arg6":Landroid/os/IRemoteCallback;
    .end local v9    # "_arg7":Z
    :cond_10
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_11

    .line 469
    .restart local v3    # "_arg1":I
    .restart local v4    # "_arg2":I
    .restart local v5    # "_arg3":I
    .restart local v6    # "_arg4":I
    .restart local v7    # "_arg5":Landroid/os/IRemoteCallback;
    .restart local v8    # "_arg6":Landroid/os/IRemoteCallback;
    :cond_11
    const/4 v9, 0x0

    goto :goto_12

    .line 476
    .end local v2    # "_arg0":Landroid/graphics/Bitmap;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Landroid/os/IRemoteCallback;
    .end local v8    # "_arg6":Landroid/os/IRemoteCallback;
    :sswitch_22
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 481
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionInPlace(Ljava/lang/String;I)V

    .line 482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 487
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :sswitch_23
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->executeAppTransition()V

    .line 489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 494
    :sswitch_24
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 498
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 502
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    .line 503
    sget-object v1, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/CompatibilityInfo;

    .line 509
    .local v5, "_arg3":Landroid/content/res/CompatibilityInfo;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    .line 510
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 516
    .local v6, "_arg4":Ljava/lang/CharSequence;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 518
    .local v7, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 520
    .local v8, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 522
    .local v9, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 524
    .restart local v10    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 526
    .local v11, "_arg9":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    const/4 v12, 0x1

    .restart local v12    # "_arg10":Z
    :goto_15
    move-object v1, p0

    .line 527
    invoke-virtual/range {v1 .. v12}, Landroid/view/IWindowManager$Stub;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    .line 528
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 506
    .end local v5    # "_arg3":Landroid/content/res/CompatibilityInfo;
    .end local v6    # "_arg4":Ljava/lang/CharSequence;
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":I
    .end local v11    # "_arg9":Landroid/os/IBinder;
    .end local v12    # "_arg10":Z
    :cond_12
    const/4 v5, 0x0

    .restart local v5    # "_arg3":Landroid/content/res/CompatibilityInfo;
    goto :goto_13

    .line 513
    :cond_13
    const/4 v6, 0x0

    .restart local v6    # "_arg4":Ljava/lang/CharSequence;
    goto :goto_14

    .line 526
    .restart local v7    # "_arg5":I
    .restart local v8    # "_arg6":I
    .restart local v9    # "_arg7":I
    .restart local v10    # "_arg8":I
    .restart local v11    # "_arg9":Landroid/os/IBinder;
    :cond_14
    const/4 v12, 0x0

    goto :goto_15

    .line 533
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/content/res/CompatibilityInfo;
    .end local v6    # "_arg4":Ljava/lang/CharSequence;
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":I
    .end local v11    # "_arg9":Landroid/os/IBinder;
    :sswitch_25
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 536
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 542
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_26
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 546
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    const/4 v3, 0x1

    .line 547
    .local v3, "_arg1":Z
    :goto_16
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 546
    .end local v3    # "_arg1":Z
    :cond_15
    const/4 v3, 0x0

    goto :goto_16

    .line 553
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_27
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 557
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 558
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    .line 559
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 564
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :sswitch_28
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 568
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16

    const/4 v3, 0x1

    .line 569
    .local v3, "_arg1":Z
    :goto_17
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    .line 570
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 568
    .end local v3    # "_arg1":Z
    :cond_16
    const/4 v3, 0x0

    goto :goto_17

    .line 575
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_29
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 578
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeAppToken(Landroid/os/IBinder;)V

    .line 579
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 584
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_2a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    .line 587
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 593
    .local v2, "_arg0":Landroid/content/res/Configuration;
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 594
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v13

    .line 595
    .local v13, "_result":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    if-eqz v13, :cond_18

    .line 597
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 603
    :goto_19
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 590
    .end local v2    # "_arg0":Landroid/content/res/Configuration;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v13    # "_result":Landroid/content/res/Configuration;
    :cond_17
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/content/res/Configuration;
    goto :goto_18

    .line 601
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    .restart local v13    # "_result":Landroid/content/res/Configuration;
    :cond_18
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19

    .line 607
    .end local v2    # "_arg0":Landroid/content/res/Configuration;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v13    # "_result":Landroid/content/res/Configuration;
    :sswitch_2b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    .line 610
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 615
    .restart local v2    # "_arg0":Landroid/content/res/Configuration;
    :goto_1a
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setNewConfiguration(Landroid/content/res/Configuration;)V

    .line 616
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 613
    .end local v2    # "_arg0":Landroid/content/res/Configuration;
    :cond_19
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/content/res/Configuration;
    goto :goto_1a

    .line 621
    .end local v2    # "_arg0":Landroid/content/res/Configuration;
    :sswitch_2c
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 625
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 626
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->startFreezingScreen(II)V

    .line 627
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 632
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_2d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopFreezingScreen()V

    .line 634
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 639
    :sswitch_2e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 643
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 644
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 645
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 650
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    :sswitch_2f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 653
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 654
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 659
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_30
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object v2

    .line 662
    .local v2, "_arg0":Landroid/view/IOnKeyguardExitResult;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    .line 663
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 668
    .end local v2    # "_arg0":Landroid/view/IOnKeyguardExitResult;
    :sswitch_31
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    move-result v13

    .line 670
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    if-eqz v13, :cond_1a

    const/4 v1, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 671
    :cond_1a
    const/4 v1, 0x0

    goto :goto_1b

    .line 676
    .end local v13    # "_result":Z
    :sswitch_32
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure()Z

    move-result v13

    .line 678
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    if-eqz v13, :cond_1b

    const/4 v1, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 679
    :cond_1b
    const/4 v1, 0x0

    goto :goto_1c

    .line 684
    .end local v13    # "_result":Z
    :sswitch_33
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isKeyguardShowingAndNotOccluded()Z

    move-result v13

    .line 686
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    if-eqz v13, :cond_1c

    const/4 v1, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 687
    :cond_1c
    const/4 v1, 0x0

    goto :goto_1d

    .line 692
    .end local v13    # "_result":Z
    :sswitch_34
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->inKeyguardRestrictedInputMode()Z

    move-result v13

    .line 694
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    if-eqz v13, :cond_1d

    const/4 v1, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 695
    :cond_1d
    const/4 v1, 0x0

    goto :goto_1e

    .line 700
    .end local v13    # "_result":Z
    :sswitch_35
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isKeyguardShowingAndOccluded()Z

    move-result v13

    .line 702
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    if-eqz v13, :cond_1e

    const/4 v1, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 703
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1f

    .line 708
    .end local v13    # "_result":Z
    :sswitch_36
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->dismissKeyguard()V

    .line 710
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 715
    :sswitch_37
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v2, 0x1

    .line 719
    .local v2, "_arg0":Z
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_20

    const/4 v3, 0x1

    .line 720
    .local v3, "_arg1":Z
    :goto_21
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->keyguardGoingAway(ZZ)V

    .line 721
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 717
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :cond_1f
    const/4 v2, 0x0

    goto :goto_20

    .line 719
    .restart local v2    # "_arg0":Z
    :cond_20
    const/4 v3, 0x0

    goto :goto_21

    .line 726
    .end local v2    # "_arg0":Z
    :sswitch_38
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 729
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 730
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 735
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_39
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 738
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result v13

    .line 739
    .local v13, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeFloat(F)V

    .line 741
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 745
    .end local v2    # "_arg0":I
    .end local v13    # "_result":F
    :sswitch_3a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object v13

    .line 747
    .local v13, "_result":[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 749
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 753
    .end local v13    # "_result":[F
    :sswitch_3b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 757
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 758
    .local v3, "_arg1":F
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    .line 759
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 764
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":F
    :sswitch_3c
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 767
    .local v2, "_arg0":[F
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    .line 768
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 773
    .end local v2    # "_arg0":[F
    :sswitch_3d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getCurrentAnimatorScale()F

    move-result v13

    .line 775
    .local v13, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeFloat(F)V

    .line 777
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 781
    .end local v13    # "_result":F
    :sswitch_3e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_21

    const/4 v2, 0x1

    .line 784
    .local v2, "_arg0":Z
    :goto_22
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setInTouchMode(Z)V

    .line 785
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 783
    .end local v2    # "_arg0":Z
    :cond_21
    const/4 v2, 0x0

    goto :goto_22

    .line 790
    :sswitch_3f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22

    const/4 v2, 0x1

    .line 793
    .restart local v2    # "_arg0":Z
    :goto_23
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    .line 794
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 792
    .end local v2    # "_arg0":Z
    :cond_22
    const/4 v2, 0x0

    goto :goto_23

    .line 799
    :sswitch_40
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 802
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 803
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 808
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_41
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 812
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_23

    const/4 v3, 0x1

    .line 813
    .local v3, "_arg1":Z
    :goto_24
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setScreenCaptureDisabled(IZ)V

    .line 814
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 812
    .end local v3    # "_arg1":Z
    :cond_23
    const/4 v3, 0x0

    goto :goto_24

    .line 819
    .end local v2    # "_arg0":I
    :sswitch_42
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 821
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24

    const/4 v2, 0x1

    .line 823
    .local v2, "_arg0":Z
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_25

    const/4 v3, 0x1

    .line 824
    .restart local v3    # "_arg1":Z
    :goto_26
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->updateRotation(ZZ)V

    .line 825
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 821
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :cond_24
    const/4 v2, 0x0

    goto :goto_25

    .line 823
    .restart local v2    # "_arg0":Z
    :cond_25
    const/4 v3, 0x0

    goto :goto_26

    .line 830
    .end local v2    # "_arg0":Z
    :sswitch_43
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->updateDisplay()V

    .line 832
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 837
    :sswitch_44
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 839
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 841
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 842
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setForcedDisplayDensityNoFreeze(II)V

    .line 843
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 848
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_45
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getRotation()I

    move-result v13

    .line 850
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 856
    .end local v13    # "_result":I
    :sswitch_46
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v2

    .line 859
    .local v2, "_arg0":Landroid/view/IRotationWatcher;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v13

    .line 860
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 866
    .end local v2    # "_arg0":Landroid/view/IRotationWatcher;
    .end local v13    # "_result":I
    :sswitch_47
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v2

    .line 869
    .restart local v2    # "_arg0":Landroid/view/IRotationWatcher;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 870
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 875
    .end local v2    # "_arg0":Landroid/view/IRotationWatcher;
    :sswitch_48
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 876
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravity()I

    move-result v13

    .line 877
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 879
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 883
    .end local v13    # "_result":I
    :sswitch_49
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 884
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravityTablet()I

    move-result v13

    .line 885
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 891
    .end local v13    # "_result":I
    :sswitch_4a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 894
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->freezeRotation(I)V

    .line 895
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 900
    .end local v2    # "_arg0":I
    :sswitch_4b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 901
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->thawRotation()V

    .line 902
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 907
    :sswitch_4c
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isRotationFrozen()Z

    move-result v13

    .line 909
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    if-eqz v13, :cond_26

    const/4 v1, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 910
    :cond_26
    const/4 v1, 0x0

    goto :goto_27

    .line 915
    .end local v13    # "_result":Z
    :sswitch_4d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IAssistScreenshotReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAssistScreenshotReceiver;

    move-result-object v2

    .line 918
    .local v2, "_arg0":Lcom/android/internal/app/IAssistScreenshotReceiver;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->requestAssistScreenshot(Lcom/android/internal/app/IAssistScreenshotReceiver;)Z

    move-result v13

    .line 919
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    if-eqz v13, :cond_27

    const/4 v1, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 920
    :cond_27
    const/4 v1, 0x0

    goto :goto_28

    .line 925
    .end local v2    # "_arg0":Lcom/android/internal/app/IAssistScreenshotReceiver;
    .end local v13    # "_result":Z
    :sswitch_4e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 929
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 931
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 933
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 934
    .local v5, "_arg3":I
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->screenshotApplications(Landroid/os/IBinder;III)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 935
    .local v13, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    if-eqz v13, :cond_28

    .line 937
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 938
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 943
    :goto_29
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 941
    :cond_28
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    .line 947
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v13    # "_result":Landroid/graphics/Bitmap;
    :sswitch_4f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 950
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->statusBarVisibilityChanged(I)V

    .line 951
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 955
    .end local v2    # "_arg0":I
    :sswitch_50
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 959
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 960
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->statusBarVisibilityChangedToDisplay(II)V

    .line 961
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 965
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_51
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->hasNavigationBar()Z

    move-result v13

    .line 967
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    if-eqz v13, :cond_29

    const/4 v1, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 968
    :cond_29
    const/4 v1, 0x0

    goto :goto_2a

    .line 973
    .end local v13    # "_result":Z
    :sswitch_52
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 975
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 976
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 981
    .local v2, "_arg0":Landroid/os/Bundle;
    :goto_2b
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->lockNow(Landroid/os/Bundle;)V

    .line 982
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 979
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :cond_2a
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/Bundle;
    goto :goto_2b

    .line 987
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :sswitch_53
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 988
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isSafeModeEnabled()Z

    move-result v13

    .line 989
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    if-eqz v13, :cond_2b

    const/4 v1, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 991
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 990
    :cond_2b
    const/4 v1, 0x0

    goto :goto_2c

    .line 995
    .end local v13    # "_result":Z
    :sswitch_54
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->enableScreenIfNeeded()V

    .line 997
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 998
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1002
    :sswitch_55
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1004
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1005
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z

    move-result v13

    .line 1006
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    if-eqz v13, :cond_2c

    const/4 v1, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1008
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1007
    :cond_2c
    const/4 v1, 0x0

    goto :goto_2d

    .line 1012
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_result":Z
    :sswitch_56
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1015
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;

    move-result-object v13

    .line 1016
    .local v13, "_result":Landroid/view/WindowContentFrameStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    if-eqz v13, :cond_2d

    .line 1018
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1019
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/view/WindowContentFrameStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1024
    :goto_2e
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1022
    :cond_2d
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2e

    .line 1028
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_result":Landroid/view/WindowContentFrameStats;
    :sswitch_57
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1032
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2e

    .line 1033
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 1039
    .local v3, "_arg1":Landroid/widget/RemoteViews;
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2f

    .line 1040
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    .line 1045
    .local v4, "_arg2":Landroid/widget/RemoteViews;
    :goto_30
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 1046
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1047
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1036
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":Landroid/widget/RemoteViews;
    :cond_2e
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/widget/RemoteViews;
    goto :goto_2f

    .line 1043
    :cond_2f
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/widget/RemoteViews;
    goto :goto_30

    .line 1051
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":Landroid/widget/RemoteViews;
    :sswitch_58
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1053
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1054
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeAdaptiveEvent(Ljava/lang/String;)V

    .line 1055
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1060
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_59
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1062
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1064
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_30

    .line 1065
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 1071
    .restart local v3    # "_arg1":Landroid/widget/RemoteViews;
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_31

    .line 1072
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    .line 1077
    .restart local v4    # "_arg2":Landroid/widget/RemoteViews;
    :goto_32
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 1078
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1068
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":Landroid/widget/RemoteViews;
    :cond_30
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/widget/RemoteViews;
    goto :goto_31

    .line 1075
    :cond_31
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/widget/RemoteViews;
    goto :goto_32

    .line 1083
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":Landroid/widget/RemoteViews;
    :sswitch_5a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1085
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_32

    .line 1086
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 1092
    .local v2, "_arg0":Landroid/app/PendingIntent;
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_33

    .line 1093
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 1098
    .local v3, "_arg1":Landroid/content/Intent;
    :goto_34
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 1099
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1089
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    .end local v3    # "_arg1":Landroid/content/Intent;
    :cond_32
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_33

    .line 1096
    :cond_33
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/content/Intent;
    goto :goto_34

    .line 1104
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    .end local v3    # "_arg1":Landroid/content/Intent;
    :sswitch_5b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_34

    .line 1107
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 1113
    .restart local v2    # "_arg0":Landroid/app/PendingIntent;
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_35

    .line 1114
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 1119
    .restart local v3    # "_arg1":Landroid/content/Intent;
    :goto_36
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setBendedPendingIntentInSecure(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 1120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1110
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    .end local v3    # "_arg1":Landroid/content/Intent;
    :cond_34
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_35

    .line 1117
    :cond_35
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/content/Intent;
    goto :goto_36

    .line 1125
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    .end local v3    # "_arg1":Landroid/content/Intent;
    :sswitch_5c
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isStatusBarVisible()Z

    move-result v13

    .line 1127
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    if-eqz v13, :cond_36

    const/4 v1, 0x1

    :goto_37
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1129
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1128
    :cond_36
    const/4 v1, 0x0

    goto :goto_37

    .line 1133
    .end local v13    # "_result":Z
    :sswitch_5d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isNavigationBarVisible()Z

    move-result v13

    .line 1135
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1136
    if-eqz v13, :cond_37

    const/4 v1, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1137
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1136
    :cond_37
    const/4 v1, 0x0

    goto :goto_38

    .line 1141
    .end local v13    # "_result":Z
    :sswitch_5e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isCarModeBarVisible()Z

    move-result v13

    .line 1143
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    if-eqz v13, :cond_38

    const/4 v1, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1145
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1144
    :cond_38
    const/4 v1, 0x0

    goto :goto_39

    .line 1149
    .end local v13    # "_result":Z
    :sswitch_5f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1153
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_39

    .line 1154
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1160
    .local v3, "_arg1":Landroid/content/ComponentName;
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3a

    const/4 v4, 0x1

    .line 1161
    .local v4, "_arg2":Z
    :goto_3b
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v13

    .line 1162
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1163
    if-eqz v13, :cond_3b

    const/4 v1, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1157
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Z
    .end local v13    # "_result":Z
    :cond_39
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    goto :goto_3a

    .line 1160
    :cond_3a
    const/4 v4, 0x0

    goto :goto_3b

    .line 1163
    .restart local v4    # "_arg2":Z
    .restart local v13    # "_result":Z
    :cond_3b
    const/4 v1, 0x0

    goto :goto_3c

    .line 1168
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Z
    .end local v13    # "_result":Z
    :sswitch_60
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1172
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3c

    .line 1173
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1178
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    :goto_3d
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v13

    .line 1179
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    if-eqz v13, :cond_3d

    const/4 v1, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1176
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v13    # "_result":Z
    :cond_3c
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    goto :goto_3d

    .line 1180
    .restart local v13    # "_result":Z
    :cond_3d
    const/4 v1, 0x0

    goto :goto_3e

    .line 1185
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v13    # "_result":Z
    :sswitch_61
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3e

    .line 1188
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1194
    .local v2, "_arg0":Landroid/content/ComponentName;
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3f

    const/4 v3, 0x1

    .line 1195
    .local v3, "_arg1":Z
    :goto_40
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->requestMetaKeyEvent(Landroid/content/ComponentName;Z)V

    .line 1196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1191
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :cond_3e
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3f

    .line 1194
    :cond_3f
    const/4 v3, 0x0

    goto :goto_40

    .line 1201
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :sswitch_62
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_40

    .line 1204
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1209
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    :goto_41
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->isMetaKeyEventRequested(Landroid/content/ComponentName;)Z

    move-result v13

    .line 1210
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    if-eqz v13, :cond_41

    const/4 v1, 0x1

    :goto_42
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1212
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1207
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v13    # "_result":Z
    :cond_40
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    goto :goto_41

    .line 1211
    .restart local v13    # "_result":Z
    :cond_41
    const/4 v1, 0x0

    goto :goto_42

    .line 1216
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v13    # "_result":Z
    :sswitch_63
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1219
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setCurrentInputMethodClient(Landroid/os/IBinder;)V

    .line 1220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1225
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_64
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1229
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1231
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_42

    .line 1232
    sget-object v1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    .line 1238
    .local v4, "_arg2":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1239
    .local v5, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    .line 1240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1235
    .end local v4    # "_arg2":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v5    # "_arg3":Landroid/os/IBinder;
    :cond_42
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    goto :goto_43

    .line 1245
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    :sswitch_65
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 1249
    .local v2, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 1251
    .local v3, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 1253
    .local v4, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_43

    const/4 v5, 0x1

    .line 1255
    .local v5, "_arg3":Z
    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IInputFilter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IInputFilter;

    move-result-object v6

    .local v6, "_arg4":Landroid/view/IInputFilter;
    move-object v1, p0

    .line 1256
    invoke-virtual/range {v1 .. v6}, Landroid/view/IWindowManager$Stub;->changeDisplayScale(FFFZLandroid/view/IInputFilter;)V

    .line 1257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1253
    .end local v5    # "_arg3":Z
    .end local v6    # "_arg4":Landroid/view/IInputFilter;
    :cond_43
    const/4 v5, 0x0

    goto :goto_44

    .line 1262
    .end local v2    # "_arg0":F
    .end local v3    # "_arg1":F
    .end local v4    # "_arg2":F
    :sswitch_66
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/easyonehand/IEasyOneHandWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/easyonehand/IEasyOneHandWatcher;

    move-result-object v2

    .line 1265
    .local v2, "_arg0":Landroid/sec/easyonehand/IEasyOneHandWatcher;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->registerEasyOneHandWatcher(Landroid/sec/easyonehand/IEasyOneHandWatcher;)V

    .line 1266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1271
    .end local v2    # "_arg0":Landroid/sec/easyonehand/IEasyOneHandWatcher;
    :sswitch_67
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/easyonehand/IEasyOneHandWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/easyonehand/IEasyOneHandWatcher;

    move-result-object v2

    .line 1274
    .restart local v2    # "_arg0":Landroid/sec/easyonehand/IEasyOneHandWatcher;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterEasyOneHandWatcher(Landroid/sec/easyonehand/IEasyOneHandWatcher;)V

    .line 1275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1276
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1280
    .end local v2    # "_arg0":Landroid/sec/easyonehand/IEasyOneHandWatcher;
    :sswitch_68
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_44

    const/4 v2, 0x1

    .line 1283
    .local v2, "_arg0":Z
    :goto_45
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->cocktailBarVisibilityChanged(Z)V

    .line 1284
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1282
    .end local v2    # "_arg0":Z
    :cond_44
    const/4 v2, 0x0

    goto :goto_45

    .line 1288
    :sswitch_69
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionTranslate()V

    .line 1290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1295
    :sswitch_6a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getCocktailBarFrame()Landroid/graphics/Rect;

    move-result-object v13

    .line 1297
    .local v13, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1298
    if-eqz v13, :cond_45

    .line 1299
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1300
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1305
    :goto_46
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1303
    :cond_45
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_46

    .line 1309
    .end local v13    # "_result":Landroid/graphics/Rect;
    :sswitch_6b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1313
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1314
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setStartingWindowContentView(Ljava/lang/String;I)V

    .line 1315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1316
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1320
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :sswitch_6c
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1324
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1325
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setReverseStartingWindowContentView(Ljava/lang/String;I)V

    .line 1326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1327
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1331
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :sswitch_6d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1335
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1336
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setKeyguardPreview(Ljava/lang/String;I)V

    .line 1337
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1338
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1342
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :sswitch_6e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1345
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getKeyguardPreviewLayoutResId(Ljava/lang/String;)I

    move-result v13

    .line 1346
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1347
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 1348
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1352
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":I
    :sswitch_6f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1355
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->updateCurrentUserPolicy(I)V

    .line 1356
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1360
    .end local v2    # "_arg0":I
    :sswitch_70
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1363
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->updateTspViewPolicy(I)V

    .line 1364
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
