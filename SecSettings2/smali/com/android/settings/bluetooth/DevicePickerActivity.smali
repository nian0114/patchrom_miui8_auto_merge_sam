.class public final Lcom/android/settings_ex/bluetooth/DevicePickerActivity;
.super Landroid/app/Activity;
.source "DevicePickerActivity.java"

# interfaces
.implements Lcom/android/settings_exlib/bluetooth/BluetoothCallback;


# static fields
.field public static canLaunchQuickBtView:Z

.field public static mMyPlacesCalled:Z


# instance fields
.field private Devicepickerbroadcast:Landroid/content/BroadcastReceiver;

.field private alertDialog:Landroid/app/AlertDialog;

.field fromHelp:Z

.field private mActivityResultDone:Z

.field private mBTEnableDisplayed:Z

.field private mCancelBtn:Landroid/widget/Button;

.field private mDomesticOtaStart:Ljava/lang/String;

.field private mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

.field private mInitiateScan:Z

.field mIsTablet:Z

.field private mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

.field private mScanBtn:Landroid/widget/Button;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    .line 80
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mInitiateScan:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->fromHelp:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DevicePickerActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->requestSystemKeyEvent(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mInitiateScan:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DevicePickerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mInitiateScan:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;)Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DevicePickerActivity;
    .param p1, "x1"    # Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DevicePickerActivity;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mCancelBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DevicePickerActivity;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mCancelBtn:Landroid/widget/Button;

    return-object p1
.end method

.method private initialize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 345
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 347
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0e02c7

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 348
    const v3, 0x7f0e0121

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 349
    const v3, 0x7f0e01ba

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 352
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 353
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040047

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 354
    .local v1, "dialoglayout":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 357
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 359
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$4;-><init>(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 393
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$5;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$5;-><init>(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 410
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 411
    return-void
.end method

.method public static isInLockTaskMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 425
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 426
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    const/4 v1, 0x1

    .line 429
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "request"    # Z

    .prologue
    .line 433
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v1, :cond_0

    .line 435
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 440
    :goto_0
    return v1

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DevicePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSystemKeyEvent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ScanBtnStateUpdate(Z)V
    .locals 2
    .param p1, "scanState"    # Z

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 416
    if-eqz p1, :cond_1

    .line 417
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f0e0874

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f0e0121

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 4
    .param p1, "bluetoothState"    # I

    .prologue
    .line 444
    const-string v1, "DevicePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBluetoothStateChanged :: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_0

    .line 448
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$6;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$6;-><init>(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 460
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings_ex/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 245
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 481
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    if-nez p1, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mInitiateScan:Z

    .line 101
    const-string v4, "DevicePickerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate :: mInitiateScan : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mInitiateScan:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mIsTablet:Z

    .line 105
    if-nez v0, :cond_2

    .line 106
    const-string v4, "DevicePickerActivity"

    const-string v5, "onCreate :: Intent.getAction() is return null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    :goto_1
    return-void

    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    move v4, v6

    .line 100
    goto :goto_0

    .line 109
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    const-string v4, "DevicePickerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate :: getAction = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v4, "com.samsung.settings.bluetooth.CheckBluetoothLEStateActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 113
    sput-boolean v5, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    .line 118
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    .line 119
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    if-nez v4, :cond_5

    .line 120
    const-string v4, "DevicePickerActivity"

    const-string v5, "Bluetooth is not supported on this device"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 114
    :cond_4
    const-string v4, "com.samsung.settings.bluetooth.CheckBluetoothStateActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 115
    sput-boolean v6, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    goto :goto_2

    .line 123
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 124
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settings_exlib/bluetooth/BluetoothCallback;)V

    .line 126
    iget-boolean v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mIsTablet:Z

    if-eqz v4, :cond_9

    .line 127
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->initialize()V

    .line 133
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 134
    .local v2, "i":Landroid/content/Intent;
    const-string v4, "fromHelp"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->fromHelp:Z

    .line 136
    iget-boolean v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mIsTablet:Z

    if-eqz v4, :cond_6

    .line 137
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    new-instance v4, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$1;-><init>(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)V

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->Devicepickerbroadcast:Landroid/content/BroadcastReceiver;

    .line 163
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->Devicepickerbroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_6
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v4

    const/16 v6, 0xa

    if-ne v4, v6, :cond_7

    .line 167
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 168
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/settings_ex/bluetooth/BluetoothEnablingActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v3, "in":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 170
    const/16 v4, 0x2f

    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 171
    iput-boolean v5, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    .line 176
    .end local v3    # "in":Landroid/content/Intent;
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_BT_SupportMissingPhone"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 177
    const-string v4, "ril.domesticOtaStart"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mDomesticOtaStart:Ljava/lang/String;

    .line 179
    :cond_8
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mWindowManager:Landroid/view/IWindowManager;

    .line 181
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    iget-boolean v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mIsTablet:Z

    if-eqz v4, :cond_a

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.bluetooth"

    const-string v6, "BLSM"

    const-string v7, "BluetoothDevicePickerDialog"

    invoke-static {v4, v5, v6, v7}, Lcom/android/settings_ex/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 129
    .end local v2    # "i":Landroid/content/Intent;
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 130
    const v4, 0x7f040047

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->setContentView(I)V

    goto/16 :goto_3

    .line 186
    .restart local v2    # "i":Landroid/content/Intent;
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.bluetooth"

    const-string v6, "BLSM"

    const-string v7, "BluetoothDevicePicker"

    invoke-static {v4, v5, v6, v7}, Lcom/android/settings_ex/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 327
    const-string v0, "DevicePickerActivity"

    const-string v1, "inside onDestroy of DevicePickerActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    .line 330
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 334
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->Devicepickerbroadcast:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->Devicepickerbroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settings_exlib/bluetooth/BluetoothCallback;)V

    .line 341
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 342
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 475
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 479
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 477
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 314
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 315
    const-string v0, "DevicePickerActivity"

    const-string v1, "inside onPause of DevicePickerActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    .line 318
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 320
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f0e0121

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 323
    :cond_0
    return-void
.end method

.method public onPostResume()V
    .locals 3

    .prologue
    .line 249
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 250
    const-string v1, "DevicePickerActivity"

    const-string v2, "onPostResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$2;-><init>(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 267
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 268
    return-void
.end method

.method public onProfileStateChanged(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;II)V
    .locals 0
    .param p1, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    .param p2, "newState"    # I
    .param p3, "oldState"    # I

    .prologue
    .line 483
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/16 v9, 0xbb

    const/16 v8, 0x1a

    const/16 v7, 0xa

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 194
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 195
    sput-boolean v5, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    .line 196
    const-string v2, "DevicePickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inside onResume with mBTEnableDisplayed= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_BT_SupportMissingPhone"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mDomesticOtaStart:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mDomesticOtaStart:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    invoke-direct {p0, v8, v5}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->requestSystemKeyEvent(IZ)Z

    .line 201
    invoke-direct {p0, v6, v5}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->requestSystemKeyEvent(IZ)Z

    .line 202
    invoke-direct {p0, v9, v5}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->requestSystemKeyEvent(IZ)Z

    .line 203
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 204
    .local v1, "sbm":Landroid/app/StatusBarManager;
    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 206
    .end local v1    # "sbm":Landroid/app/StatusBarManager;
    :cond_0
    const-string v2, "lock"

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "missing_phone_lock"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    invoke-direct {p0, v8, v5}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->requestSystemKeyEvent(IZ)Z

    .line 208
    invoke-direct {p0, v6, v5}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->requestSystemKeyEvent(IZ)Z

    .line 209
    invoke-direct {p0, v9, v5}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->requestSystemKeyEvent(IZ)Z

    .line 210
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 211
    .restart local v1    # "sbm":Landroid/app/StatusBarManager;
    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 215
    .end local v1    # "sbm":Landroid/app/StatusBarManager;
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    if-nez v2, :cond_4

    .line 218
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 219
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 222
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->finish()V

    .line 237
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/settings_ex/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 238
    return-void

    .line 225
    :cond_4
    iget-boolean v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 226
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings_ex/bluetooth/BluetoothEnablingActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .local v0, "in":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->startActivity(Landroid/content/Intent;)V

    .line 230
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    .line 231
    iput-boolean v5, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    goto :goto_0
.end method

.method public onScanningStateChanged(Z)V
    .locals 2
    .param p1, "started"    # Z

    .prologue
    const v1, 0x7f0400f7

    .line 465
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->fromHelp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 466
    if-eqz p1, :cond_1

    .line 467
    const v0, 0x7f0e015a

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->showHelpDialog(II)V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    const v0, 0x7f0e015b

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->showHelpDialog(II)V

    goto :goto_0
.end method

.method public showHelpDialog(II)V
    .locals 6
    .param p1, "resID"    # I
    .param p2, "layout"    # I

    .prologue
    .line 272
    const/4 v2, 0x0

    .line 274
    .local v2, "created":Z
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    if-nez v4, :cond_0

    .line 275
    new-instance v4, Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    .line 276
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 277
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4, p0}, Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 278
    const/4 v2, 0x1

    .line 281
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    sget-object v5, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 285
    .local v1, "bubbleView":Landroid/view/View;
    const v4, 0x7f0d0012

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 287
    .local v3, "summary":Landroid/widget/TextView;
    if-nez v3, :cond_1

    .line 288
    const v4, 0x7f0d02eb

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "summary":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 291
    .restart local v3    # "summary":Landroid/widget/TextView;
    :cond_1
    if-eqz v3, :cond_2

    .line 292
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 294
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4, v1}, Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 295
    const v4, 0x7f0d000d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 297
    .local v0, "btnClose":Landroid/widget/ImageButton;
    if-eqz v0, :cond_3

    .line 298
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 299
    new-instance v4, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$3;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity$3;-><init>(Lcom/android/settings_ex/bluetooth/DevicePickerActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    :cond_3
    if-eqz v2, :cond_4

    .line 308
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4}, Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 310
    :cond_4
    return-void
.end method
