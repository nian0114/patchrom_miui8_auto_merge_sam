.class public Lcom/android/settings_ex/wifi/WifiSecSetupActivity;
.super Landroid/app/Activity;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/WifiSecSetupActivity$FrpWarningDialog;,
        Lcom/android/settings_ex/wifi/WifiSecSetupActivity$WifiConnectionDialog;,
        Lcom/android/settings_ex/wifi/WifiSecSetupActivity$WifiSkipDialog;,
        Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;
    }
.end annotation


# static fields
.field private static DBG:Z

.field private static final WIFI_OFF:Z

.field private static final isGalaxyView:Z

.field private static mContext:Landroid/content/Context;

.field private static mIsWifiConnected:Z

.field public static final mProductName:Ljava/lang/String;

.field private static mWifiManager:Landroid/net/wifi/WifiManager;

.field public static useSprintNewSetupWizard:Z


# instance fields
.field FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

.field FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

.field private button_transY:F

.field private handler:Landroid/os/Handler;

.field private helpMenuCheck:Z

.field private isCurrentAPchecked:Z

.field private isFirstEnterWifiSetupWizard:I

.field private isHelpMenuShow:Z

.field private mBottomButtonArea:Landroid/widget/RelativeLayout;

.field private mCountryIso:Ljava/lang/String;

.field private mEffectImageContainer:Landroid/view/ViewGroup;

.field private mEffectImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsEnableFRP:Z

.field private mIsPopupMenu:Z

.field private mIsReactiveLockEnabled:Z

.field private mIsSupportFRP:Z

.field private mIsTablet:Z

.field private mNextBtnArea:Landroid/widget/LinearLayout;

.field private mPreviousBtnArea:Landroid/widget/LinearLayout;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSetupWizardCheck:I

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mSwitchBarView:Landroid/view/View;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mWifiDevice:Landroid/widget/ImageView;

.field private mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

.field private mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

.field private mWifiSettingsView:Landroid/view/View;

.field private menuButton:Landroid/widget/LinearLayout;

.field private nextButtonImage:Landroid/widget/ImageView;

.field private nextButtonText:Landroid/widget/TextView;

.field private popup:Landroid/widget/PopupMenu;

.field private previousButtonText:Landroid/widget/TextView;

.field private transX:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->DBG:Z

    .line 133
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mProductName:Ljava/lang/String;

    .line 134
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mProductName:Ljava/lang/String;

    const-string v3, "gvlte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mProductName:Ljava/lang/String;

    const-string v3, "gvwifi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    sput-boolean v2, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->isGalaxyView:Z

    .line 137
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Setting_SkipWifiActvDuringSetupWizard"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->WIFI_OFF:Z

    .line 138
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Common_SetupWizard_Spr"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->useSprintNewSetupWizard:Z

    .line 149
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    .line 212
    sput-boolean v1, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    return-void

    :cond_1
    move v0, v2

    .line 128
    goto :goto_0

    :cond_2
    move v2, v1

    .line 134
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 162
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->isCurrentAPchecked:Z

    .line 164
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    .line 165
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    .line 179
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->isHelpMenuShow:Z

    .line 182
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    .line 183
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsEnableFRP:Z

    .line 184
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsReactiveLockEnabled:Z

    .line 188
    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->transX:F

    .line 189
    const/high16 v0, 0x43600000    # 224.0f

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->button_transY:F

    .line 209
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->handler:Landroid/os/Handler;

    .line 213
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 214
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    .line 1335
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSecSetupActivity;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSecSetupActivity;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 126
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$1102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 126
    sput-boolean p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSecSetupActivity;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->isCaptivePortal()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300()Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSecSetupActivity;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->startAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;JZ)V
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSecSetupActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->revealWifiEffectInfinite(JZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSecSetupActivity;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSecSetupActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->animateWifiEffect(IJ)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSecSetupActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsPopupMenu:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;)Landroid/widget/PopupMenu;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSecSetupActivity;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;ZZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSecSetupActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->allowToGoNext(ZZI)V

    return-void
.end method

.method private allowToGoNext(ZZI)V
    .locals 7
    .param p1, "isNextButtonEnabled"    # Z
    .param p2, "isDialogPopped"    # Z
    .param p3, "dialogMsg"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3ecccccd    # 0.4f

    .line 1076
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 1077
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1079
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1080
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1081
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 1083
    sget-object v3, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1084
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 1085
    .local v2, "wifiNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 1086
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1088
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    .line 1090
    :try_start_0
    invoke-static {p3}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$WifiConnectionDialog;->newInstance(I)Lcom/android/settings_ex/wifi/WifiSecSetupActivity$WifiConnectionDialog;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "dialog"

    invoke-virtual {v3, v4, v5}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$WifiConnectionDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    :cond_2
    :goto_2
    return-void

    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_3
    move v3, v5

    .line 1077
    goto :goto_0

    :cond_4
    move v4, v5

    .line 1079
    goto :goto_1

    .line 1091
    .restart local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .restart local v2    # "wifiNetwork":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 1092
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on allowToGoNext: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$WifiConnectionDialog;->forget()V

    .line 1094
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private animateWifiEffect(IJ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "delay"    # J

    .prologue
    .line 363
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/wifi/VI/SineInOut33Wifi;

    invoke-direct {v2}, Lcom/android/settings_ex/wifi/VI/SineInOut33Wifi;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$4;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$4;-><init>(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 380
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 374
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xe6

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$5;-><init>(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private checkWifiAgain()Z
    .locals 4

    .prologue
    .line 1100
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 1102
    :try_start_0
    sget-object v1, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1103
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1110
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CountryISO"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1116
    :cond_1
    :goto_1
    const-string v1, "cn"

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1117
    const-string v1, "WifiSecSetupActivity"

    const-string v2, "Need to check WiFi again."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/4 v1, 0x1

    .line 1120
    :goto_2
    return v1

    .line 1104
    :catch_0
    move-exception v0

    .line 1105
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiSecSetupActivity"

    const-string v2, "Exception occured at checkWifiAgain(), while retrieving Context.TELEPHONY_SERVICE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1111
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1112
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "WifiSecSetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception on CountryISO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1120
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private static getAccountEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account_type"    # Ljava/lang/String;

    .prologue
    .line 904
    const/4 v1, 0x0

    .line 905
    .local v1, "accountEmail":Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 906
    .local v2, "manager":Landroid/accounts/AccountManager;
    invoke-virtual {v2, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 907
    .local v0, "accountArray":[Landroid/accounts/Account;
    array-length v3, v0

    if-lez v3, :cond_0

    .line 908
    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget-object v1, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 910
    :cond_0
    return-object v1
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3ecccccd    # 0.4f

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 495
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "action":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsReactiveLockEnabled:Z

    if-eqz v6, :cond_3

    .line 516
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 517
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .line 518
    .local v5, "mNetworkInfo":Landroid/net/NetworkInfo;
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 519
    sput-boolean v10, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    .line 520
    new-instance v6, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;

    invoke-direct {v6, p0, v9}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;Lcom/android/settings_ex/wifi/WifiSecSetupActivity$1;)V

    new-array v7, v10, [Landroid/net/NetworkInfo;

    aput-object v5, v7, v11

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 574
    .end local v5    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    sput-boolean v11, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    .line 524
    sget-object v6, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 525
    .local v2, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 526
    .local v1, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 527
    sput-boolean v10, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    .line 529
    :cond_2
    new-instance v6, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;

    invoke-direct {v6, p0, v9}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;Lcom/android/settings_ex/wifi/WifiSecSetupActivity$1;)V

    new-array v7, v11, [Landroid/net/NetworkInfo;

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 531
    .end local v1    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_3
    iget-boolean v6, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    if-eqz v6, :cond_0

    .line 532
    :cond_4
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 533
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 536
    .local v3, "info":Landroid/net/NetworkInfo;
    const/4 v4, 0x0

    .line 537
    .local v4, "isConn":Z
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 538
    :cond_5
    const-string v6, "WifiSecSetupActivity"

    const-string v9, "handleEvent() : wifi state changed, isConn set true !!!"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/4 v4, 0x1

    .line 542
    :cond_6
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v6, :cond_7

    .line 543
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_8

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 545
    :cond_7
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 547
    if-eqz v4, :cond_a

    .line 548
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 549
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto :goto_0

    :cond_8
    move v6, v8

    .line 543
    goto :goto_1

    :cond_9
    move v7, v8

    .line 545
    goto :goto_2

    .line 551
    :cond_a
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 552
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_0

    .line 554
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .end local v4    # "isConn":Z
    :cond_b
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 555
    const/4 v4, 0x0

    .line 556
    .restart local v4    # "isConn":Z
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 557
    const-string v6, "WifiSecSetupActivity"

    const-string v9, "handleEvent() : connectivity state changed, isConn set true !!!"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v4, 0x1

    .line 560
    :cond_c
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v6, :cond_d

    .line 561
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_e

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 563
    :cond_d
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v4, :cond_f

    :goto_4
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 565
    if-eqz v4, :cond_10

    .line 566
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 567
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_0

    :cond_e
    move v6, v8

    .line 561
    goto :goto_3

    :cond_f
    move v7, v8

    .line 563
    goto :goto_4

    .line 569
    :cond_10
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 570
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_0
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 484
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 485
    .local v0, "frame":Landroid/widget/FrameLayout;
    const v2, 0x7f0d062d

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 486
    new-instance v2, Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {v2}, Lcom/android/settings_ex/wifi/WifiSettings;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    .line 487
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->setSwitchBarInSetupWizard(Lcom/android/settings_ex/widget/SwitchBar;)V

    .line 488
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 489
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 490
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 492
    return-void
.end method

.method private isCaptivePortal()I
    .locals 13

    .prologue
    const/16 v12, 0x257

    const/16 v11, 0xc8

    .line 1124
    const/16 v3, 0x257

    .line 1126
    .local v3, "httpResponseCode":I
    const/4 v7, 0x0

    .line 1127
    .local v7, "urlConnection":Ljava/net/HttpURLConnection;
    const-string v8, "WifiSecSetupActivity"

    const-string v9, "Checking http://connectivitycheck.android.com/generate_204"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :try_start_0
    new-instance v6, Ljava/net/URL;

    const-string v8, "http://connectivitycheck.android.com/generate_204"

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1131
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    .line 1132
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1133
    const/16 v8, 0x1388

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1134
    const/16 v8, 0x1388

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1135
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1137
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 1138
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 1139
    sget-boolean v8, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v8, :cond_0

    .line 1140
    const-string v8, "WifiSecSetupActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCaptivePortal: ret="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " headers="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_0
    if-ne v3, v11, :cond_2

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    if-nez v8, :cond_2

    .line 1142
    sget-boolean v8, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v8, :cond_1

    const-string v8, "WifiSecSetupActivity"

    const-string v9, "Empty 200 response interpreted as 204 response."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_1
    const/16 v3, 0xcc

    .line 1145
    :cond_2
    const/16 v8, 0x197

    if-ne v3, v8, :cond_4

    .line 1146
    sget-boolean v8, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v8, :cond_3

    const-string v8, "WifiSecSetupActivity"

    const-string v9, "407 Proxy Authentication Required interpreted as 204 response."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1147
    :cond_3
    const/16 v3, 0xcc

    .line 1156
    :cond_4
    if-eqz v7, :cond_5

    .line 1157
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1161
    .end local v6    # "url":Ljava/net/URL;
    :cond_5
    :goto_0
    if-ne v3, v12, :cond_7

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->checkWifiAgain()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1162
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1164
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    :try_start_1
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    const-string v8, "http://www.amazon.com"

    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1165
    .local v4, "request":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 1166
    .local v5, "response":Lorg/apache/http/HttpResponse;
    const-string v8, "WifiSecSetupActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HttpClient statusCode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    if-ne v8, v11, :cond_b

    .line 1168
    const/16 v3, 0xcc

    .line 1173
    :cond_6
    :goto_1
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1180
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v4    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :cond_7
    :goto_2
    return v3

    .line 1149
    :catch_0
    move-exception v2

    .line 1150
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    sget-boolean v8, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v8, :cond_8

    const-string v8, "WifiSecSetupActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Probably not a portal: exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1152
    :cond_8
    if-ne v3, v12, :cond_9

    .line 1156
    :cond_9
    if-eqz v7, :cond_5

    .line 1157
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 1156
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v7, :cond_a

    .line 1157
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    throw v8

    .line 1170
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    :cond_b
    :try_start_3
    sget-boolean v8, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v8, :cond_6

    .line 1171
    const-string v8, "WifiSecSetupActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Fail: Code : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1174
    .end local v4    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v2

    .line 1175
    .restart local v2    # "e":Ljava/io/IOException;
    sget-boolean v8, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v8, :cond_7

    .line 1176
    const-string v8, "WifiSecSetupActivity"

    const-string v9, "Fail: IOException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static isNetworkConnected()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 940
    sget-object v6, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    if-nez v6, :cond_1

    .line 941
    const-string v5, "WifiSecSetupActivity"

    const-string v6, "isNetworkConnected() : mContext is null !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return v4

    .line 945
    .end local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_1
    sget-object v6, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 947
    .restart local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 948
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 950
    .local v3, "wifiNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 952
    .local v2, "mobileNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 954
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 955
    sput-boolean v5, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    move v4, v5

    .line 956
    goto :goto_0

    .line 957
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 958
    goto :goto_0

    .line 959
    :cond_3
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 960
    goto :goto_0
.end method

.method public static isSupportGoogleFRP(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 838
    const/4 v2, 0x0

    .line 840
    .local v2, "value":Z
    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 842
    .local v1, "rsm":Lcom/samsung/android/service/reactive/ReactiveServiceManager;
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 845
    const-string v3, "WifiSecSetupActivity"

    const-string v4, "isSupportGoogleFRP : service is not Connected!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :goto_0
    return v2

    .line 847
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v0

    .line 848
    .local v0, "result":I
    const-string v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSupportGoogleFRP getServiceSupport : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    packed-switch v0, :pswitch_data_0

    .line 868
    :goto_1
    :pswitch_0
    const-string v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSupportGoogleFRP : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 860
    :pswitch_1
    const/4 v2, 0x1

    .line 864
    goto :goto_1

    .line 849
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readGoogleFRPFlag(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    .line 875
    const/4 v2, 0x0

    .line 877
    .local v2, "value":Z
    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 879
    .local v1, "rsm":Lcom/samsung/android/service/reactive/ReactiveServiceManager;
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 882
    const-string v3, "WifiSecSetupActivity"

    const-string v4, "readGoogleFRPFlag : service is not Connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const/4 v3, 0x0

    .line 897
    :goto_0
    return v3

    .line 886
    :cond_0
    invoke-virtual {v1, v6}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v0

    .line 887
    .local v0, "flagResult":I
    const-string v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readGoogleFRPFlag getFlag result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v6, :cond_2

    .line 890
    :cond_1
    const/4 v2, 0x1

    .line 896
    :cond_2
    const-string v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readGoogleFRPFlag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 897
    goto :goto_0
.end method

.method private static readReactiveLockFlag(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 915
    const/4 v2, 0x0

    .line 916
    .local v2, "value":Z
    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 917
    .local v1, "rsm":Lcom/samsung/android/service/reactive/ReactiveServiceManager;
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result v0

    .line 919
    .local v0, "flagResult":I
    if-ltz v0, :cond_2

    if-gt v0, v3, :cond_2

    .line 922
    if-ne v0, v3, :cond_0

    const-string v3, "com.google"

    invoke-static {p0, v3}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getAccountEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 924
    const-string v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readReactiveLockFlag : Activated - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/4 v2, 0x1

    .line 930
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readReactiveLockFlag - result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_1
    return v2

    .line 928
    :cond_2
    const-string v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readReactiveLockFlag - exception occured:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetAnimation()V
    .locals 2

    .prologue
    .line 326
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 327
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$2;-><init>(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 336
    return-void
.end method

.method private revealWifiEffectInfinite(JZ)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "begin"    # Z

    .prologue
    const/4 v2, 0x0

    .line 383
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 384
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsTablet:Z

    if-nez v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 386
    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    .end local p1    # "delay":J
    :cond_0
    invoke-direct {p0, v2, p1, p2}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->animateWifiEffect(IJ)V

    .line 388
    :cond_1
    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 4

    .prologue
    .line 318
    const/16 v0, 0x400

    .line 319
    .local v0, "visibility":I
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 321
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 322
    .local v1, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x7ffff400

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 323
    return-void
.end method

.method private startAnimation()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x294

    const-wide/16 v4, 0x14a

    const/4 v3, 0x0

    .line 339
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 340
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mBottomButtonArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 341
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 343
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    invoke-static {v1, v4, v5, v6, v7}, Lcom/android/settings_ex/wifi/VI/AnimationHelperWifi;->animTitleFromRight(Landroid/view/View;JJ)V

    .line 348
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-static {v1, v4, v5, v6, v7}, Lcom/android/settings_ex/wifi/VI/AnimationHelperWifi;->animCommonFromRight(Landroid/view/View;JJ)V

    .line 350
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 351
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/wifi/VI/SineInOut33Wifi;

    invoke-direct {v2}, Lcom/android/settings_ex/wifi/VI/SineInOut33Wifi;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 353
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiDevice:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 354
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiDevice:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/wifi/VI/SineInOut33Wifi;

    invoke-direct {v2}, Lcom/android/settings_ex/wifi/VI/SineInOut33Wifi;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$3;-><init>(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 360
    return-void
.end method

.method private updateLayoutMargin(Landroid/content/res/Configuration;)V
    .locals 22
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 630
    const v17, 0x7f04027a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->setContentView(I)V

    .line 633
    const v17, 0x7f0d0621

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mView:Landroid/view/View;

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c01f4

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 637
    .local v8, "marginLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c01f5

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 640
    .local v9, "marginRight":I
    const v17, 0x7f0d0184

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/settings_ex/widget/SwitchBar;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 642
    new-instance v17, Lcom/android/settings_ex/wifi/WifiEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings_ex/widget/SwitchBar;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Lcom/android/settings_ex/widget/SwitchBar;->setSwitchBarMargin(II)V

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings_ex/widget/SwitchBar;->setProgressBarVisible(Z)V

    .line 647
    :cond_0
    const v17, 0x7f0d062b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    .line 648
    invoke-static/range {p0 .. p0}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 649
    new-instance v17, Landroid/widget/PopupMenu;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    .line 654
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x2

    const/16 v20, 0x0

    const v21, 0x7f0e03b1

    invoke-interface/range {v17 .. v21}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    const v21, 0x7f0e03b8

    invoke-interface/range {v17 .. v21}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x5

    const/16 v20, 0x0

    const v21, 0x7f0e03ba

    invoke-interface/range {v17 .. v21}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x7

    const/16 v20, 0x0

    const v21, 0x7f0e0524

    invoke-interface/range {v17 .. v21}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0xc

    const/16 v20, 0x0

    const v21, 0x7f0e03a8

    invoke-interface/range {v17 .. v21}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 667
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->isHelpMenuShow:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 670
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const-string v18, "com.samsung.helphub"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 671
    .local v7, "info":Landroid/content/pm/PackageInfo;
    iget v0, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v17, v0

    rem-int/lit8 v17, v17, 0xa

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    iget v0, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v17, v0

    rem-int/lit8 v17, v17, 0xa

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 672
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->helpMenuCheck:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x6

    const/16 v20, 0x0

    const v21, 0x7f0e0d77

    invoke-interface/range {v17 .. v21}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$6;-><init>(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$7;-><init>(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    const v17, 0x7f0d0622

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiDevice:Landroid/widget/ImageView;

    .line 700
    const v17, 0x7f0d0623

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    .line 702
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const v17, 0x7f0d0624

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const v17, 0x7f0d0625

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const v17, 0x7f0d0626

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const v17, 0x7f0d0627

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    const v17, 0x7f0d04fc

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    .line 710
    const v17, 0x7f0d007e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mBottomButtonArea:Landroid/widget/RelativeLayout;

    .line 712
    const v17, 0x7f0d062e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    const v17, 0x7f0d062f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e0f9c

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    const v17, 0x7f0d0630

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    const v17, 0x7f0d053f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e0f9b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const v18, 0x3f5eb852    # 0.87f

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setAlpha(F)V

    .line 722
    const v17, 0x7f0d0540

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    .line 723
    new-instance v4, Landroid/graphics/LightingColorFilter;

    const/high16 v17, -0x1000000

    const-string v18, "#000000"

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 724
    .local v4, "colorfilter":Landroid/graphics/ColorFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const v18, 0x3f5eb852    # 0.87f

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setSelected(Z)V

    .line 729
    const v17, 0x7f0d0184

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mSwitchBarView:Landroid/view/View;

    .line 730
    const v17, 0x7f0d062c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiSettingsView:Landroid/view/View;

    .line 732
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e0f9b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e091d

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 734
    .local v10, "nextButtonTts":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 737
    sget-object v17, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "show_button_background"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_3

    .line 738
    sget-object v17, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 740
    .local v13, "r":Landroid/content/res/Resources;
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c02d2

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v15, v0

    .line 745
    .local v15, "topbottomPx":I
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c0401

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v6, v0

    .line 750
    .local v6, "endPx":I
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 753
    .local v11, "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v17, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/android/settings_ex/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 754
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v6, v15, v0, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 757
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f020295

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 760
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c0400

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v14, v0

    .line 765
    .local v14, "rightPx":I
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c0402

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 770
    .local v16, "updownendPx":I
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v12, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 773
    .local v12, "paramss":Landroid/widget/LinearLayout$LayoutParams;
    sget-object v17, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/android/settings_ex/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 774
    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v12, v14, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 777
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f020295

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 788
    .end local v6    # "endPx":I
    .end local v11    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "paramss":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "r":Landroid/content/res/Resources;
    .end local v14    # "rightPx":I
    .end local v15    # "topbottomPx":I
    .end local v16    # "updownendPx":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->initialize()V

    .line 796
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const v18, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 804
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const v18, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setAlpha(F)V

    .line 807
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 834
    :cond_6
    :goto_4
    return-void

    .line 651
    .end local v4    # "colorfilter":Landroid/graphics/ColorFilter;
    .end local v10    # "nextButtonTts":Ljava/lang/String;
    :cond_7
    new-instance v17, Landroid/widget/PopupMenu;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const v19, 0x800005

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    goto/16 :goto_0

    .line 676
    :catch_0
    move-exception v5

    .line 677
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 756
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "colorfilter":Landroid/graphics/ColorFilter;
    .restart local v6    # "endPx":I
    .restart local v10    # "nextButtonTts":Ljava/lang/String;
    .restart local v11    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v13    # "r":Landroid/content/res/Resources;
    .restart local v15    # "topbottomPx":I
    :cond_8
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0, v15, v6, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 776
    .restart local v12    # "paramss":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v14    # "rightPx":I
    .restart local v16    # "updownendPx":I
    :cond_9
    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-virtual {v12, v0, v1, v14, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_3

    .line 809
    .end local v6    # "endPx":I
    .end local v11    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "paramss":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "r":Landroid/content/res/Resources;
    .end local v14    # "rightPx":I
    .end local v15    # "topbottomPx":I
    .end local v16    # "updownendPx":I
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 813
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v17

    if-nez v17, :cond_d

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const v18, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 817
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const v18, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setAlpha(F)V

    .line 820
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_4

    .line 823
    :cond_d
    new-instance v17, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;Lcom/android/settings_ex/wifi/WifiSecSetupActivity$1;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Landroid/net/NetworkInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_4

    .line 826
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 830
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsReactiveLockEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    invoke-static {}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 831
    new-instance v17, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;Lcom/android/settings_ex/wifi/WifiSecSetupActivity$1;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Landroid/net/NetworkInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_4
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 308
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 309
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->performClick()Z

    .line 314
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 392
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 433
    :goto_0
    :pswitch_0
    return-void

    .line 400
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->setResult(I)V

    .line 401
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->finish()V

    goto :goto_0

    .line 407
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 408
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 410
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    if-eqz v2, :cond_4

    .line 411
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 412
    const-string v2, "WifiSecSetupActivity"

    const-string v3, "next_button : isNetworkConnected() is true, finish()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->setResult(I)V

    .line 414
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->finish()V

    goto :goto_0

    .line 416
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsEnableFRP:Z

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/settings_ex/Utils;->isAllNAVendor()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 417
    const-string v2, "WifiSecSetupActivity"

    const-string v3, "next_button :  isNetworkConnected() is false, show WifiSkipDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const v1, 0x7f0e0459

    .line 419
    .local v1, "message":I
    const v2, 0x7f0e0459

    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$WifiSkipDialog;->newInstance(I)Lcom/android/settings_ex/wifi/WifiSecSetupActivity$WifiSkipDialog;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$WifiSkipDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 421
    .end local v1    # "message":I
    :cond_3
    const-string v2, "WifiSecSetupActivity"

    const-string v3, "next_button :  mIsEnableFRP is true, but not connected!, finish()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->setResult(I)V

    .line 423
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->finish()V

    goto :goto_0

    .line 427
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->setResult(I)V

    .line 428
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->finish()V

    goto/16 :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x7f0d062e
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 597
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 598
    const/4 v0, 0x0

    .line 619
    .local v0, "needToReopenPoupMenu":Z
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 220
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    .line 223
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_setup_complete"

    invoke-static {v2, v3, v6, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mSetupWizardCheck:I

    .line 224
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "first_enter_wifisetupwizard"

    invoke-static {v2, v3, v5, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->isFirstEnterWifiSetupWizard:I

    .line 226
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 227
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "extra_samsungaccount_for_wifisetupwizard"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    .line 230
    :cond_0
    sget-object v2, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->isSupportGoogleFRP(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    .line 231
    sget-object v2, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->readGoogleFRPFlag(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsEnableFRP:Z

    .line 232
    sget-object v2, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->readReactiveLockFlag(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsReactiveLockEnabled:Z

    .line 233
    const-string v2, "WifiSecSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate : mIsSupportFRP =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsEnableFRP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsEnableFRP:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", useSprintNewSetupWizard = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->useSprintNewSetupWizard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    if-eqz v2, :cond_5

    .line 235
    const-string v2, "is_network_required"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    const-string v2, "WifiSecSetupActivity"

    const-string v3, "onCreate : FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD set true !!! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    .line 243
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 244
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->setIndicatorTransparency()V

    .line 245
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->hide()V

    .line 248
    :cond_2
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsTablet:Z

    .line 249
    iput-boolean v6, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsPopupMenu:Z

    .line 251
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->updateLayoutMargin(Landroid/content/res/Configuration;)V

    .line 253
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    sput-object v2, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 255
    const-string v2, "WifiSecSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFirstEnterWifiSetupWizard : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->isFirstEnterWifiSetupWizard:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSetupWizardCheck : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mSetupWizardCheck:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->isFirstEnterWifiSetupWizard:I

    if-ne v2, v5, :cond_3

    iget v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mSetupWizardCheck:I

    if-nez v2, :cond_3

    .line 257
    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->WIFI_OFF:Z

    if-nez v2, :cond_6

    .line 258
    sget-object v2, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 262
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "first_enter_wifisetupwizard"

    invoke-static {v2, v3, v6, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 265
    :cond_3
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    .line 266
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    new-instance v2, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$1;-><init>(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;)V

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 278
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->resetAnimation()V

    .line 280
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v2

    if-nez v2, :cond_4

    .line 281
    const v1, 0x7f0e030b

    .line 282
    .local v1, "message":I
    const v2, 0x7f0e030b

    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$FrpWarningDialog;->newInstance(I)Lcom/android/settings_ex/wifi/WifiSecSetupActivity$FrpWarningDialog;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$FrpWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 284
    .end local v1    # "message":I
    :cond_4
    return-void

    .line 240
    :cond_5
    const-string v2, "WifiSecSetupActivity"

    const-string v3, "onCreate : not support FRP !!! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 260
    :cond_6
    sget-object v2, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    .line 288
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    if-eqz v2, :cond_0

    .line 290
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 291
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 293
    .local v1, "wifiIsEnabled":Z
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 294
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 295
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 299
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/16 v3, 0xc

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 303
    .end local v0    # "mWifiManager":Landroid/net/wifi/WifiManager;
    .end local v1    # "wifiIsEnabled":Z
    :cond_0
    return v4
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 437
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 479
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 439
    :pswitch_1
    const-string v0, "WifiSecSetupActivity"

    const-string v1, "onAddNetworkPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->onAddNetworkPressed()V

    goto :goto_0

    .line 444
    :pswitch_2
    const-string v0, "WifiSecSetupActivity"

    const-string v1, "onWpsPushBtnPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->onWpsPushBtnPressed()V

    goto :goto_0

    .line 449
    :pswitch_3
    const-string v0, "WifiSecSetupActivity"

    const-string v1, "onWpsPinBtnPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->onWpsPinBtnPressed()V

    goto :goto_0

    .line 459
    :pswitch_4
    const-string v0, "WifiSecSetupActivity"

    const-string v1, "onHelpMenuPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 464
    :pswitch_5
    const-string v0, "WifiSecSetupActivity"

    const-string v1, "onSmartNetworkSwitchPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->onSmartNetworkSwitchPressed()V

    goto :goto_0

    .line 469
    :pswitch_6
    const-string v0, "WifiSecSetupActivity"

    const-string v1, "onSleepPolicyPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->onSleepPolicyPressed()V

    goto :goto_0

    .line 437
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->pause()V

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 582
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 583
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 591
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 592
    return-void
.end method
