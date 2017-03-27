.class public final Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
.super Landroid/preference/Preference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;,
        Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$DeviceObject;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static mClickable:Z

.field private static mVersion:I

.field private static sDimAlpha:I


# instance fields
.field private deviceObject:Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$DeviceObject;

.field private final mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

.field private mIsBtScanDialog:Z

.field private mIsProcessingAsync:Z

.field private mIsRequestUpdate:Z

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 74
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->DBG:Z

    .line 76
    const/high16 v0, -0x80000000

    sput v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    .line 78
    sput-boolean v2, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mClickable:Z

    .line 87
    sput v1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mVersion:I

    return-void

    :cond_0
    move v0, v2

    .line 74
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 125
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mIsProcessingAsync:Z

    .line 126
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mIsRequestUpdate:Z

    .line 127
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mIsBtScanDialog:Z

    .line 131
    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings_ex/bluetooth/BluetoothScanDialog;

    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mIsBtScanDialog:Z

    .line 135
    sget v2, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_0

    .line 136
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 137
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010033

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 138
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    .line 141
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mIsBtScanDialog:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    if-eqz v2, :cond_3

    .line 143
    :cond_1
    const v2, 0x7f040178

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setLayoutResource(I)V

    .line 149
    :goto_0
    invoke-virtual {p2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    .line 150
    const-string v2, "user"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 151
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mIsBtScanDialog:Z

    if-nez v2, :cond_2

    .line 152
    const-string v2, "no_config_bluetooth"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 153
    const v2, 0x7f040176

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setWidgetLayoutResource(I)V

    .line 158
    .end local v1    # "um":Landroid/os/UserManager;
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2, p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged()V

    .line 160
    return-void

    .line 146
    :cond_3
    const v2, 0x7f040177

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setLayoutResource(I)V

    goto :goto_0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 70
    sput-boolean p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mClickable:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mIsProcessingAsync:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$DeviceObject;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->deviceObject:Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$DeviceObject;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$DeviceObject;)Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$DeviceObject;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    .param p1, "x1"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$DeviceObject;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->deviceObject:Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$DeviceObject;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->notifyHierarchyChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mIsRequestUpdate:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mIsRequestUpdate:Z

    return p1
.end method

.method private getBtClassDrawable()I
    .locals 15

    .prologue
    .line 570
    iget-object v12, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v12}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 571
    .local v1, "btClass":Landroid/bluetooth/BluetoothClass;
    iget-object v12, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v12}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getAppearance()S

    move-result v0

    .line 572
    .local v0, "appearance":I
    iget-object v12, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v12}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getGearManagerName()[B

    move-result-object v6

    .line 574
    .local v6, "manufacturerData":[B
    const-string v12, "BluetoothDevicePreference"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getBtClassDrawable :: BluetoothClass = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", Appearance = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v12, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v12}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 578
    .local v4, "mDeviceName":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 579
    const-string v12, "SAMSUNG LEVEL"

    invoke-virtual {v4, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 580
    const-string v12, "BOX"

    invoke-virtual {v4, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 581
    const v11, 0x7f02022b

    .line 689
    :cond_0
    :goto_0
    return v11

    .line 583
    :cond_1
    const v11, 0x7f020233

    goto :goto_0

    .line 584
    :cond_2
    const-string v12, "GEAR ICONX"

    invoke-virtual {v4, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 585
    const v11, 0x7f020234

    goto :goto_0

    .line 589
    :cond_3
    if-eqz v6, :cond_4

    array-length v12, v6

    const/16 v13, 0xa

    if-le v12, v13, :cond_4

    iget-object v12, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v12, v6}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->isContactType([B)Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v12, 0xa

    aget-byte v12, v6, v12

    if-lez v12, :cond_4

    .line 590
    invoke-static {v6}, Lcom/android/settings_ex/bluetooth/Utils;->getDeviceTypeIndex([B)I

    move-result v9

    .line 591
    .local v9, "resIcon":I
    if-eqz v9, :cond_4

    move v11, v9

    goto :goto_0

    .line 594
    .end local v9    # "resIcon":I
    :cond_4
    if-eqz v1, :cond_f

    .line 595
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    .line 649
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getAppearanceDrawable(I)I

    move-result v11

    .line 650
    .local v11, "ret":I
    if-nez v11, :cond_0

    .line 654
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 655
    const v11, 0x7f020243

    goto :goto_0

    .line 597
    .end local v11    # "ret":I
    :sswitch_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v12

    const/16 v13, 0x11c

    if-ne v12, v13, :cond_6

    .line 598
    const v11, 0x7f020246

    goto :goto_0

    .line 600
    :cond_6
    const v11, 0x7f020237

    goto :goto_0

    .line 604
    :sswitch_1
    iget-object v12, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v12}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 605
    const v11, 0x7f020246

    goto :goto_0

    .line 607
    :cond_7
    const v11, 0x7f020238

    goto :goto_0

    .line 611
    :sswitch_2
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v12

    const/16 v13, 0x704

    if-ne v12, v13, :cond_8

    .line 612
    const v11, 0x7f02024a

    goto :goto_0

    .line 616
    :cond_8
    :sswitch_3
    invoke-static {v1}, Lcom/android/settings_exlib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v11

    goto :goto_0

    .line 619
    :sswitch_4
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v12

    const/16 v13, 0x620

    if-ne v12, v13, :cond_9

    .line 620
    const v11, 0x7f020228

    goto/16 :goto_0

    .line 622
    :cond_9
    const v11, 0x7f02023d

    goto/16 :goto_0

    .line 625
    :sswitch_5
    iget-object v12, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v12}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->isSLDDevice()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 626
    const v11, 0x7f02022e

    goto/16 :goto_0

    .line 627
    :cond_a
    iget-object v12, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v12}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->isGearCircle()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 628
    const v11, 0x7f020231

    goto/16 :goto_0

    .line 631
    :cond_b
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v12

    const/16 v13, 0x43c

    if-ne v12, v13, :cond_c

    .line 632
    const v11, 0x7f020247

    goto/16 :goto_0

    .line 633
    :cond_c
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v12

    const/16 v13, 0x434

    if-ne v12, v13, :cond_d

    .line 634
    const v11, 0x7f020227

    goto/16 :goto_0

    .line 639
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings_ex/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v5

    .line 640
    .local v5, "mLocalBluetoothManager":Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    iget-object v12, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settings_exlib/bluetooth/A2dpProfile;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->hasProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settings_exlib/bluetooth/HeadsetProfile;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->hasProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 642
    const v11, 0x7f020243

    goto/16 :goto_0

    .line 657
    .end local v5    # "mLocalBluetoothManager":Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    .restart local v11    # "ret":I
    :cond_e
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 658
    const v11, 0x7f020239

    goto/16 :goto_0

    .line 660
    .end local v11    # "ret":I
    :cond_f
    if-eqz v0, :cond_11

    .line 661
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getAppearanceDrawable(I)I

    move-result v11

    .line 662
    .restart local v11    # "ret":I
    if-nez v11, :cond_0

    .line 669
    .end local v11    # "ret":I
    :cond_10
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings_ex/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v5

    .line 670
    .restart local v5    # "mLocalBluetoothManager":Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    iget-object v12, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settings_exlib/bluetooth/A2dpProfile;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->hasProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Z

    move-result v12

    if-eqz v12, :cond_12

    iget-object v12, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settings_exlib/bluetooth/HeadsetProfile;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->hasProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 672
    iget-object v12, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    new-instance v13, Landroid/bluetooth/BluetoothClass;

    const/16 v14, 0x420

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-direct {v13, v14}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v12, v13}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    .line 673
    const v11, 0x7f020243

    goto/16 :goto_0

    .line 666
    .end local v5    # "mLocalBluetoothManager":Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    :cond_11
    const-string v12, "BluetoothDevicePreference"

    const-string v13, "mBtClass is null"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 676
    .restart local v5    # "mLocalBluetoothManager":Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    :cond_12
    iget-object v12, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v12}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v8

    .line 677
    .local v8, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 678
    .local v7, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v2, v12, :cond_15

    .line 679
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lcom/android/settings_exlib/bluetooth/A2dpProfile;

    if-eqz v12, :cond_14

    .line 680
    iget-object v12, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    new-instance v13, Landroid/bluetooth/BluetoothClass;

    const/16 v14, 0x418

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-direct {v13, v14}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v12, v13}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    .line 681
    const v11, 0x7f020243

    goto/16 :goto_0

    .line 678
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 684
    :cond_15
    invoke-interface {v7, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v10

    .line 685
    .local v10, "resId":I
    if-eqz v10, :cond_13

    move v11, v10

    .line 686
    goto/16 :goto_0

    .line 689
    .end local v2    # "i":I
    .end local v7    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    .end local v10    # "resId":I
    :cond_16
    const v11, 0x7f020232

    goto/16 :goto_0

    .line 595
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x400 -> :sswitch_5
        0x500 -> :sswitch_3
        0x600 -> :sswitch_4
        0x700 -> :sswitch_2
    .end sparse-switch
.end method

.method private getContactDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 727
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 728
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings_ex/bluetooth/Utils;->getContactImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 729
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 733
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    .line 555
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "deviceName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 557
    .local v3, "mName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    .line 558
    .local v4, "mNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 559
    .local v5, "res":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 561
    .local v1, "iconResId":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContactDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 563
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 566
    .end local v1    # "iconResId":Landroid/graphics/drawable/Drawable;
    .local v2, "iconResId":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    .line 565
    .end local v2    # "iconResId":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "iconResId":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getBtClassDrawable()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lcom/android/settings_ex/bluetooth/Utils;->makeBitmapIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v1

    .line 566
    .end local v1    # "iconResId":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "iconResId":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private isStubExists(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 525
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 526
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 528
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 529
    .local v2, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 530
    const/4 v7, 0x0

    invoke-virtual {v4, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v7, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mVersion:I

    .line 531
    const-string v7, "BluetoothDevicePreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INSTALLER_STUB is exist. Package : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Version : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mVersion:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v7, "com.samsung.android.app.watchmanagerstub"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 533
    sget v7, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mVersion:I

    const/16 v8, 0x64

    if-le v7, v8, :cond_2

    .line 551
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_0
    return v5

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    move v5, v6

    .line 536
    goto :goto_0

    .line 538
    :cond_3
    const-string v7, "com.sec.android.app.applinker"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 539
    sget v7, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v7, :cond_1

    move v5, v6

    .line 542
    goto :goto_0

    .line 547
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 550
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    const-string v5, "BluetoothDevicePreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "INSTALLER_STUB is not exist. package : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 551
    goto :goto_0
.end method

.method private pair()V
    .locals 6

    .prologue
    .line 316
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->startPairing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0e005e

    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 319
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.bluetooth"

    const-string v4, "BEMC"

    const-string v5, "4_bluetooth_message_pairing_error"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings_ex/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 326
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings_ex/search/SearchIndexableRaw;

    invoke-direct {v1, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 327
    .local v1, "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-class v2, Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 328
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 329
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e02c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 330
    const v2, 0x7f0201a2

    iput v2, v1, Lcom/android/settings_ex/search/SearchIndexableRaw;->iconResId:I

    .line 331
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings_ex/search/SearchIndexableRaw;->enabled:Z

    .line 333
    invoke-static {v0}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/search/Index;->updateFromSearchIndexableData(Landroid/provider/SearchIndexableData;)V

    goto :goto_0
.end method


# virtual methods
.method checkDeviceType()I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 338
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/bluetooth/Utils;->checkUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 339
    const-string v2, "BluetoothDevicePreference"

    const-string v3, "checkDeviceType :: checkUltraPowerSavingMode() is true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    :goto_0
    return v1

    .line 343
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getGearManagerName()[B

    move-result-object v0

    .line 345
    .local v0, "manufacturerData":[B
    if-eqz v0, :cond_6

    .line 346
    const/4 v5, 0x5

    aget-byte v5, v0, v5

    if-nez v5, :cond_5

    const/4 v5, 0x6

    aget-byte v5, v0, v5

    if-ne v5, v3, :cond_5

    .line 347
    const/4 v5, 0x7

    aget-byte v5, v0, v5

    if-nez v5, :cond_4

    aget-byte v5, v0, v7

    const/16 v6, -0x70

    if-lt v5, v6, :cond_4

    aget-byte v5, v0, v7

    const/4 v6, -0x1

    if-gt v5, v6, :cond_4

    .line 350
    const-string v3, "com.sec.android.app.applinker"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->isStubExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->isSLDDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 352
    goto :goto_0

    .line 353
    :cond_2
    const/16 v1, 0xa

    aget-byte v1, v0, v1

    if-ne v1, v4, :cond_3

    move v1, v2

    .line 354
    goto :goto_0

    .line 356
    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    .line 360
    :cond_4
    const-string v2, "com.samsung.android.app.watchmanagerstub"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->isStubExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    .line 361
    goto :goto_0

    .line 364
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2, v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->isContactType([B)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 368
    :cond_6
    const-string v2, "com.samsung.android.app.watchmanagerstub"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->isStubExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->isGear1()Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v4

    .line 369
    goto :goto_0
.end method

.method checkLanuchGM(Z)V
    .locals 16
    .param p1, "isBonded"    # Z

    .prologue
    .line 376
    sget-boolean v12, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->DBG:Z

    if-eqz v12, :cond_0

    const-string v12, "BluetoothDevicePreference"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Calling connect device with "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v14}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", isBonded "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v12}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v12

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "addr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v12}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v10

    .line 380
    .local v10, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 381
    .local v5, "gearManagerName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 384
    .local v7, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v12

    const-string v13, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 385
    if-eqz p1, :cond_3

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "com.android.bluetooth"

    const-string v14, "BDSC"

    const-string v15, "PairToConnect"

    invoke-static {v12, v13, v14, v15}, Lcom/android/settings_ex/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->checkDeviceType()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 515
    :cond_2
    :goto_1
    return-void

    .line 389
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "com.android.bluetooth"

    const-string v14, "BDSC"

    const-string v15, "UnpairToConnect"

    invoke-static {v12, v13, v14, v15}, Lcom/android/settings_ex/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :pswitch_0
    const-string v5, "watchmanager"

    .line 398
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    const-string v12, "com.samsung.android.sconnect.action.CONNECT_WEARABLE"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v12, "WM_MANAGER"

    invoke-virtual {v7, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v12, "MAC"

    invoke-virtual {v7, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const/high16 v12, 0x10000000

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 403
    sget-boolean v12, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->DBG:Z

    if-eqz v12, :cond_4

    const-string v12, "BluetoothDevicePreference"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "launchGearManager :: DEVICE_TYPE_GEAR1, MAC : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",  WM_MANAGER : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_4
    const-string v12, "BluetoothDevicePreference"

    const-string v13, "launchGearManager :: SendBroadcast : CONNECT_WEARABLE"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 408
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v12}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getGearManagerName()[B

    move-result-object v9

    .line 410
    .local v9, "manufacturerData":[B
    sget-boolean v12, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->DBG:Z

    if-eqz v12, :cond_6

    if-eqz v9, :cond_6

    array-length v12, v9

    if-lez v12, :cond_6

    .line 411
    new-instance v11, Ljava/lang/StringBuilder;

    array-length v12, v9

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 413
    .local v11, "stringBuilder":Ljava/lang/StringBuilder;
    move-object v2, v9

    .local v2, "arr$":[B
    array-length v8, v2

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v8, :cond_5

    aget-byte v3, v2, v6

    .line 414
    .local v3, "byteChar":B
    const-string v12, "%02X "

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 416
    .end local v3    # "byteChar":B
    :cond_5
    const-string v12, "BluetoothDevicePreference"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "launchGearManager :: DEVICE_TYPE_GEAR, MAC : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",  Manufacturer Data : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .end local v2    # "arr$":[B
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v11    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_6
    sget v12, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mVersion:I

    const/16 v13, 0xc8

    if-ge v12, v13, :cond_9

    .line 420
    if-eqz v9, :cond_2

    array-length v12, v9

    const/16 v13, 0xa

    if-le v12, v13, :cond_2

    .line 421
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    const-string v12, "com.samsung.android.sconnect.action.CONNECT_WEARABLE"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .restart local v7    # "intent":Landroid/content/Intent;
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v12, 0xa

    aget-byte v12, v9, v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 423
    .restart local v11    # "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "cnt":I
    :goto_3
    const/16 v12, 0xa

    aget-byte v12, v9, v12

    if-ge v4, v12, :cond_7

    .line 424
    add-int/lit8 v12, v4, 0xb

    aget-byte v12, v9, v12

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 423
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 427
    :cond_7
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 428
    const-string v12, "WM_MANAGER"

    invoke-virtual {v7, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const-string v12, "MAC"

    invoke-virtual {v7, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const/high16 v12, 0x10000000

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 432
    sget-boolean v12, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->DBG:Z

    if-eqz v12, :cond_8

    const-string v12, "BluetoothDevicePreference"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "launchGearManager :: DEVICE_TYPE_GEAR, MAC : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",  WM_MANAGER : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_8
    const-string v12, "BluetoothDevicePreference"

    const-string v13, "launchGearManager :: SendBroadcast : CONNECT_WEARABLE"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 435
    .end local v4    # "cnt":I
    .end local v11    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_9
    sget v12, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mVersion:I

    const/16 v13, 0x12c

    if-ge v12, v13, :cond_a

    .line 437
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    const-string v12, "com.samsung.android.wmanger.action.CONNECT_WEARABLE"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v12, "DATA"

    invoke-virtual {v7, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 439
    const-string v12, "MAC"

    invoke-virtual {v7, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const/high16 v12, 0x10000000

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 442
    const-string v12, "BluetoothDevicePreference"

    const-string v13, "launchGearManager :: SendBroadcast : CONNECT_WEARABLE"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 445
    :cond_a
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    const-string v12, "com.samsung.android.action.BLUETOOTH_DEVICE"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v12, "DATA"

    invoke-virtual {v7, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 447
    const-string v12, "MAC"

    invoke-virtual {v7, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const/high16 v12, 0x10000000

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 450
    const-string v12, "BluetoothDevicePreference"

    const-string v13, "launchGearManager :: SendBroadcast : BLUETOOTH_DEVICE"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 455
    .end local v9    # "manufacturerData":[B
    :pswitch_2
    const-string v12, "BluetoothDevicePreference"

    const-string v13, "launchGearManager :: try to connect with DEVICE_TYPE_WEARABLE_CONNECT device"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    sget v12, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mVersion:I

    const/16 v13, 0xc8

    if-lt v12, v13, :cond_d

    .line 458
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v12}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getGearManagerName()[B

    move-result-object v9

    .line 459
    .restart local v9    # "manufacturerData":[B
    sget-boolean v12, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->DBG:Z

    if-eqz v12, :cond_c

    if-eqz v9, :cond_c

    array-length v12, v9

    if-lez v12, :cond_c

    .line 460
    new-instance v11, Ljava/lang/StringBuilder;

    array-length v12, v9

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 462
    .restart local v11    # "stringBuilder":Ljava/lang/StringBuilder;
    move-object v2, v9

    .restart local v2    # "arr$":[B
    array-length v8, v2

    .restart local v8    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_4
    if-ge v6, v8, :cond_b

    aget-byte v3, v2, v6

    .line 463
    .restart local v3    # "byteChar":B
    const-string v12, "%02X "

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 465
    .end local v3    # "byteChar":B
    :cond_b
    const-string v12, "BluetoothDevicePreference"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "launchGearManager :: DEVICE_TYPE_WEARABLE_CONNECT, MAC : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",  Manufacturer Data : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .end local v2    # "arr$":[B
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v11    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_c
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    const-string v12, "com.samsung.android.action.BLUETOOTH_DEVICE"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v12, "MAC"

    invoke-virtual {v7, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    const-string v12, "DATA"

    invoke-virtual {v7, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 471
    const/high16 v12, 0x10000000

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 473
    const-string v12, "BluetoothDevicePreference"

    const-string v13, "launchGearManager :: SendBroadcast : BLUETOOTH_DEVICE"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .end local v9    # "manufacturerData":[B
    :cond_d
    if-eqz p1, :cond_e

    .line 477
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto/16 :goto_1

    .line 479
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->pair()V

    goto/16 :goto_1

    .line 484
    :pswitch_3
    const-string v12, "BluetoothDevicePreference"

    const-string v13, "launchGearManager :: try to connect with DEVICE_TYPE_WEARABLE device"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    sget v12, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mVersion:I

    const/16 v13, 0xc8

    if-lt v12, v13, :cond_2

    .line 487
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v12}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getGearManagerName()[B

    move-result-object v9

    .line 488
    .restart local v9    # "manufacturerData":[B
    sget-boolean v12, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->DBG:Z

    if-eqz v12, :cond_10

    if-eqz v9, :cond_10

    array-length v12, v9

    if-lez v12, :cond_10

    .line 489
    new-instance v11, Ljava/lang/StringBuilder;

    array-length v12, v9

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 491
    .restart local v11    # "stringBuilder":Ljava/lang/StringBuilder;
    move-object v2, v9

    .restart local v2    # "arr$":[B
    array-length v8, v2

    .restart local v8    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_5
    if-ge v6, v8, :cond_f

    aget-byte v3, v2, v6

    .line 492
    .restart local v3    # "byteChar":B
    const-string v12, "%02X "

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 494
    .end local v3    # "byteChar":B
    :cond_f
    const-string v12, "BluetoothDevicePreference"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "launchGearManager :: DEVICE_TYPE_WEARABLE, MAC : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",  Manufacturer Data : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    .end local v2    # "arr$":[B
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v11    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_10
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    const-string v12, "com.samsung.android.action.BLUETOOTH_DEVICE"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v12, "MAC"

    invoke-virtual {v7, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    const-string v12, "DATA"

    invoke-virtual {v7, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 500
    const/high16 v12, 0x10000000

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 502
    const-string v12, "BluetoothDevicePreference"

    const-string v13, "launchGearManager :: SendBroadcast : BLUETOOTH_DEVICE"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 506
    .end local v9    # "manufacturerData":[B
    :pswitch_4
    if-eqz p1, :cond_11

    .line 507
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto/16 :goto_1

    .line 509
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->pair()V

    goto/16 :goto_1

    .line 394
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .param p1, "another"    # Landroid/preference/Preference;

    .prologue
    .line 270
    instance-of v0, p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 272
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    .line 275
    .end local p1    # "another":Landroid/preference/Preference;
    :goto_0
    return v0

    .restart local p1    # "another":Landroid/preference/Preference;
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .end local p1    # "another":Landroid/preference/Preference;
    iget-object v1, p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 70
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 257
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_1

    .line 258
    :cond_0
    const/4 v0, 0x0

    .line 260
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getAppearanceDrawable(I)I
    .locals 3
    .param p1, "appearance"    # I

    .prologue
    const v0, 0x7f02024a

    .line 693
    sparse-switch p1, :sswitch_data_0

    .line 723
    const/4 v0, 0x0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 695
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GALAXY Gear ("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 698
    const v0, 0x7f020238

    goto :goto_0

    .line 701
    :sswitch_2
    const v0, 0x7f020237

    goto :goto_0

    .line 709
    :sswitch_3
    const v0, 0x7f020236

    goto :goto_0

    .line 712
    :sswitch_4
    const v0, 0x7f02023a

    goto :goto_0

    .line 716
    :sswitch_5
    const v0, 0x7f020230

    goto :goto_0

    .line 718
    :sswitch_6
    const v0, 0x7f02022c

    goto :goto_0

    .line 693
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_0
        0x200 -> :sswitch_6
        0x3c0 -> :sswitch_3
        0x3c1 -> :sswitch_3
        0x3c2 -> :sswitch_4
        0x3c3 -> :sswitch_5
        0x3c4 -> :sswitch_5
    .end sparse-switch
.end method

.method getCachedDevice()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method isGear1()Z
    .locals 2

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getBtClassDrawable()I

    move-result v0

    const v1, 0x7f02024a

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GALAXY Gear ("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x1020016

    .line 198
    const-string v3, "bt_checkbox"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 199
    const-string v3, "bt_checkbox"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setDependency(Ljava/lang/String;)V

    .line 212
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 213
    const v3, 0x7f0d03d6

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 214
    .local v0, "deviceDetails":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 220
    .end local v0    # "deviceDetails":Landroid/widget/ImageView;
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 222
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "ro.build.scafe.size"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tall"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 224
    .local v1, "mPreferenceText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 228
    .end local v1    # "mPreferenceText":Landroid/widget/TextView;
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 230
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 231
    .local v2, "title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0181

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 233
    .end local v2    # "title":Landroid/widget/TextView;
    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mClickable:Z

    if-eqz v1, :cond_0

    .line 238
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mClickable:Z

    .line 239
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 240
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 251
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 253
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method onClicked()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 280
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 282
    .local v0, "bondState":I
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->isSppOnlyDevice()Z

    move-result v2

    if-nez v2, :cond_3

    .line 283
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.bluetooth"

    const-string v4, "BDSC"

    const-string v5, "ConnectToPair"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings_ex/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_0
    sget-boolean v2, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "BluetoothDevicePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling disconnect device with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e02d9

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 293
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 299
    .end local v1    # "msg":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 294
    :cond_3
    const/16 v2, 0xc

    if-ne v0, v2, :cond_4

    .line 295
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->checkLanuchGM(Z)V

    goto :goto_0

    .line 296
    :cond_4
    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 297
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->checkLanuchGM(Z)V

    goto :goto_0
.end method

.method onClickedForHeadset()V
    .locals 2

    .prologue
    .line 305
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 307
    .local v0, "bondState":I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 308
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->checkLanuchGM(Z)V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 310
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->checkLanuchGM(Z)V

    goto :goto_0
.end method

.method public onDeviceAttributesChanged()V
    .locals 4

    .prologue
    .line 183
    const-string v1, "BluetoothDevicePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeviceAttributesChanged :: Device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "isBonded = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mIsProcessingAsync:Z

    if-nez v1, :cond_0

    .line 186
    :try_start_0
    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "ex":Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "BluetoothDevicePreference"

    const-string v2, "RejectedExecutionException :: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    .end local v0    # "ex":Ljava/util/concurrent/RejectedExecutionException;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mIsRequestUpdate:Z

    goto :goto_0
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 174
    return-void
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 168
    return-void
.end method
