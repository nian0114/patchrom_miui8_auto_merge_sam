.class public Lcom/android/settings_ex/deviceinfo/UsbBackend;
.super Ljava/lang/Object;
.source "UsbBackend.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private mIsUnlocked:Z

.field private mPort:Landroid/hardware/usb/UsbPort;

.field private mPortStatus:Landroid/hardware/usb/UsbPortStatus;

.field private final mRestricted:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sput-object p1, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mContext:Landroid/content/Context;

    .line 57
    const/4 v5, 0x0

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 59
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "unlocked"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mIsUnlocked:Z

    .line 61
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUserManager:Landroid/os/UserManager;

    .line 62
    const-class v5, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbManager;

    iput-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 64
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUserManager:Landroid/os/UserManager;

    const-string v6, "no_usb_file_transfer"

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mRestricted:Z

    .line 65
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v3

    .line 68
    .local v3, "ports":[Landroid/hardware/usb/UsbPort;
    array-length v0, v3

    .line 69
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 70
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Landroid/hardware/usb/UsbManager;->getPortStatus(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v4

    .line 71
    .local v4, "status":Landroid/hardware/usb/UsbPortStatus;
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    aget-object v5, v3, v1

    iput-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    .line 73
    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 77
    .end local v4    # "status":Landroid/hardware/usb/UsbPortStatus;
    :cond_0
    return-void

    .line 69
    .restart local v4    # "status":Landroid/hardware/usb/UsbPortStatus;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private modeToPower(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 167
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private setUsbFunction(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 115
    const-string v0, "UsbBackend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB connection setUsbFunction : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    packed-switch p1, :pswitch_data_0

    .line 139
    :pswitch_0
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "UsbBackend"

    const-string v1, "USB connection setUsbFunction : vzw_charging"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "vzw_charging"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 118
    :pswitch_1
    sget-object v0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_mtp_settings"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    const-string v0, "UsbBackend"

    const-string v1, "USB connection setUsbFunction : mtp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "mtp"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :pswitch_2
    const-string v0, "UsbBackend"

    const-string v1, "USB connection setUsbFunction : ptp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "ptp"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :pswitch_3
    const-string v0, "UsbBackend"

    const-string v1, "USB connection setUsbFunction : midi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "midi"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :pswitch_4
    const-string v0, "UsbBackend"

    const-string v1, "USB connection setUsbFunction : mass_storage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "mass_storage"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_0
    const-string v0, "UsbBackend"

    const-string v1, "USB connection setUsbFunction : sec_charging"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "sec_charging"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getCurrentMode()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 80
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 83
    .local v0, "power":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbBackend;->getUsbDataMode()I

    move-result v1

    or-int/2addr v1, v0

    .line 85
    .end local v0    # "power":I
    :goto_1
    return v1

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbBackend;->getUsbDataMode()I

    move-result v1

    or-int/lit8 v1, v1, 0x0

    goto :goto_1
.end method

.method public getUsbDataMode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 89
    iget-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mIsUnlocked:Z

    if-nez v1, :cond_1

    .line 90
    const-string v1, "UsbBackend"

    const-string v2, "USB connection getUsbDataMode : None"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "mtp"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    const-string v0, "UsbBackend"

    const-string v1, "USB connection getUsbDataMode : mtp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, 0x2

    goto :goto_0

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "ptp"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    const-string v0, "UsbBackend"

    const-string v1, "USB connection getUsbDataMode : ptp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v0, 0x4

    goto :goto_0

    .line 98
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "midi"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 99
    const-string v0, "UsbBackend"

    const-string v1, "USB connection getUsbDataMode : midi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x6

    goto :goto_0

    .line 101
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "mass_storage"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 102
    const-string v0, "UsbBackend"

    const-string v1, "USB connection getUsbDataMode : mass_storage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/16 v0, 0x8

    goto :goto_0

    .line 104
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "sec_charging"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 105
    const-string v1, "UsbBackend"

    const-string v2, "USB connection getUsbDataMode : sec_charging"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "vzw_charging"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const-string v1, "UsbBackend"

    const-string v2, "USB connection getUsbDataMode : vzw_charging"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isModeSupported(I)Z
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 172
    iget-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mRestricted:Z

    if-eqz v3, :cond_1

    and-int/lit8 v3, p1, 0xe

    if-eqz v3, :cond_1

    and-int/lit8 v3, p1, 0xe

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v1

    .line 177
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v3, :cond_4

    .line 178
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/UsbBackend;->modeToPower(I)I

    move-result v0

    .line 179
    .local v0, "power":I
    and-int/lit8 v3, p1, 0xe

    if-eqz v3, :cond_2

    .line 181
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v1, v0, v5}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v1

    goto :goto_0

    .line 185
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v3, v0, v5}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v3, v0, v2}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 190
    .end local v0    # "power":I
    :cond_4
    and-int/lit8 v3, p1, 0x1

    if-eq v3, v2, :cond_5

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_5
    move v2, v1

    goto :goto_1
.end method

.method public setMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 152
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v2, :cond_0

    .line 153
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/UsbBackend;->modeToPower(I)I

    move-result v1

    .line 157
    .local v1, "powerRole":I
    and-int/lit8 v2, p1, 0xe

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2, v1, v0}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    .local v0, "dataRole":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2, v3, v1, v0}, Landroid/hardware/usb/UsbManager;->setPortRoles(Landroid/hardware/usb/UsbPort;II)V

    .line 162
    .end local v0    # "dataRole":I
    .end local v1    # "powerRole":I
    :cond_0
    const-string v2, "UsbBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USB connection setMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    and-int/lit8 v2, p1, 0xe

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbBackend;->setUsbFunction(I)V

    .line 164
    return-void

    .line 157
    .restart local v1    # "powerRole":I
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method
