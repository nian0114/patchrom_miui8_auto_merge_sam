.class public Lcom/android/settings_ex/wifi/WifiStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStatusReceiver.java"


# static fields
.field private static final DEBUG:Z

.field public static mIsForegroundWifiSettings:Z

.field public static mIsForegroundWifiSubSettings:Z

.field public static mIsWifiScreen:Z

.field public static mIsbRetryPopup:Z


# instance fields
.field private mDoNotShow:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->DEBUG:Z

    .line 40
    sput-boolean v1, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 41
    sput-boolean v1, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 43
    sput-boolean v1, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsbRetryPopup:Z

    .line 44
    sput-boolean v1, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsWifiScreen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isWifiSettingScreen(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiStatusReceiver-Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiSettings on top: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", WifiSubSettings on top: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    if-eqz v0, :cond_1

    .line 141
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    .line 142
    :cond_1
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    if-eqz v0, :cond_2

    .line 143
    const/4 v0, 0x2

    goto :goto_0

    .line 145
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "launchWith"    # I

    .prologue
    .line 122
    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiStatusReceiver-Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startWifiPickerActivity with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_2

    .line 125
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v1, "wifiIntent":Landroid/content/Intent;
    if-lez p3, :cond_1

    .line 127
    sput p3, Lcom/android/settings_ex/wifi/WifiSettings;->mStartWith:I

    .line 128
    :cond_1
    const/high16 v2, 0x14800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v1    # "wifiIntent":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 131
    .restart local v1    # "wifiIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "WifiStatusReceiver-Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t start picker activity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 97
    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiStatusReceiver-Settings"

    const-string v3, "Call AP LIST dialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    const-string v2, "CMCC"

    sget-object v3, Lcom/android/settings_ex/Utils;->CONFIG_WIFI_NOTIFICATION_STYLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mDoNotShow:Landroid/content/SharedPreferences;

    .line 101
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mDoNotShow:Landroid/content/SharedPreferences;

    const-string v3, "aplist_do_not_show"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 102
    .local v0, "do_not_show_again":Z
    const-string v2, "WifiStatusReceiver-Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "settings do_not_show_again is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eqz v0, :cond_2

    .line 119
    .end local v0    # "do_not_show_again":Z
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_1

    .line 107
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v1, "startDialogIntent":Landroid/content/Intent;
    const-class v2, Lcom/android/settings_ex/wifi/WifiPickerDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 110
    const-string v2, "found_ssid_list"

    const-string v3, "found_ssid_list"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v2, "force_show_dialog"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    const-string v2, "force_show_dialog"

    const-string v3, "force_show_dialog"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    :cond_3
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "action":Ljava/lang/String;
    sget-boolean v7, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 51
    const-string v7, "WifiStatusReceiver-Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    const-string v7, "com.samsung.android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 55
    const-string v7, "WifiStatusReceiver-Settings"

    const-string v8, "ACTION_SEC_PICK_WIFI_NETWORK"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v7, "type"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v11, :cond_2

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 59
    :cond_2
    invoke-direct {p0, p1, p2, v10}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0

    .line 61
    :cond_3
    const-string v7, "com.samsung.android.net.wifi.AUTH_FAIL"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "VZW"

    sget-object v8, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 63
    const-string v7, "wifiConfiguration"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 64
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    sget-boolean v7, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsWifiScreen:Z

    if-nez v7, :cond_1

    .line 66
    if-eqz v2, :cond_1

    .line 67
    iget v7, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    iget v7, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v7, v11, :cond_1

    iget v7, v2, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 70
    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 71
    .local v3, "networkId":I
    const-string v7, "changeReason"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 72
    .local v4, "reason":I
    sget-boolean v7, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsbRetryPopup:Z

    if-eqz v7, :cond_1

    .line 73
    const-string v7, "WifiStatusReceiver-Settings"

    const-string v8, "Show WifiAuthFailWarningDialog ~~~!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 75
    .local v6, "startDialogIntent":Landroid/content/Intent;
    const-class v7, Lcom/android/settings_ex/wifi/WifiAuthFailWarningDialog;

    invoke-virtual {v6, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 76
    const/high16 v7, 0x10000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    const-string v7, "wifi_auth_fail_nId"

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    const-string v7, "changeReason"

    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    invoke-virtual {p1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "networkId":I
    .end local v4    # "reason":I
    .end local v6    # "startDialogIntent":Landroid/content/Intent;
    :cond_4
    const-string v7, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "com.samsung.intent.action.SETTINGS_RESET_WIFI"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 86
    :cond_5
    new-instance v5, Lcom/android/settings_ex/wifi/WifiReset;

    invoke-direct {v5, p1, v10}, Lcom/android/settings_ex/wifi/WifiReset;-><init>(Landroid/content/Context;Z)V

    .line 87
    .local v5, "reset":Lcom/android/settings_ex/wifi/WifiReset;
    invoke-virtual {v5}, Lcom/android/settings_ex/wifi/WifiReset;->start()V

    goto :goto_0

    .line 88
    .end local v5    # "reset":Lcom/android/settings_ex/wifi/WifiReset;
    :cond_6
    const-string v7, "com.samsung.android.net.wifi.WECHAT_LOGOUT"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 89
    new-instance v0, Lcom/android/settings_ex/wifi/WeChatAccessPoint;

    invoke-direct {v0}, Lcom/android/settings_ex/wifi/WeChatAccessPoint;-><init>()V

    .line 90
    .local v0, "accessPoint":Lcom/android/settings_ex/wifi/WeChatAccessPoint;
    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0, p1}, Lcom/android/settings_ex/wifi/WeChatAccessPoint;->init(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
