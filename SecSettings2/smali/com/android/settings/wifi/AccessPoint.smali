.class Lcom/android/settings/wifi/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/AccessPoint$1;,
        Lcom/android/settings/wifi/AccessPoint$PskType;
    }
.end annotation


# static fields
.field private static final STATE_GIGA_NONE:[I

.field private static final STATE_GIGA_SECURED:[I

.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I

.field private static final STATE_WECHAT:[I

.field private static wifi_signal_attributes:[I


# instance fields
.field bssid:Ljava/lang/String;

.field frequency:I

.field private isDcm:Z

.field isHidden:Z

.field isHs20Ap:Z

.field isPickerDialog:Z

.field keyMgmts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mContext:Landroid/content/Context;

.field public mCurrentBssid:Ljava/lang/String;

.field mExpiration:Ljava/lang/String;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field private mId:I

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field public mIsAuthenticated:Z

.field public mIsCaptivePortal:Z

.field public mIsGigaAp:Z

.field public mIsGigaIcon:Z

.field mIsSharedAp:Z

.field public mIsWeChatAp:Z

.field private mPreviousSummary:Ljava/lang/String;

.field public mRssi:I

.field public mSavedStoreName:Ljava/lang/String;

.field mScanResult:Landroid/net/wifi/ScanResult;

.field public mScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSeen:J

.field public mSkipInternetCheck:Z

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field public mStoreName:Ljava/lang/String;

.field mWeChatAccessPoint:Lcom/android/settings/wifi/WeChatAccessPoint;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field networkId:I

.field order:I

.field pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

.field public secFlags:Ljava/util/BitSet;

.field security:I

.field public showSummary:Z

.field ssid:Ljava/lang/String;

.field wpsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    new-array v0, v3, [I

    const v1, 0x7f01011a

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_SECURED:[I

    .line 94
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_NONE:[I

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_GIGA_SECURED:[I

    .line 98
    new-array v0, v3, [I

    const v1, 0x7f01011b

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_GIGA_NONE:[I

    .line 101
    new-array v0, v3, [I

    const v1, 0x7f01011c

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_WECHAT:[I

    .line 105
    new-array v0, v3, [I

    const v1, 0x7f01014f

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->wifi_signal_attributes:[I

    return-void

    .line 95
    nop

    :array_0
    .array-data 4
        0x7f01011b
        0x7f01011a
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const v1, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 362
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 135
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 136
    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->order:I

    .line 137
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->isHs20Ap:Z

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    .line 139
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->isDcm:Z

    .line 141
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->isHidden:Z

    .line 142
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->isPickerDialog:Z

    .line 143
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsCaptivePortal:Z

    .line 144
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsAuthenticated:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mSkipInternetCheck:Z

    .line 147
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 152
    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSeen:J

    .line 159
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 161
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaAp:Z

    .line 162
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaIcon:Z

    .line 165
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsWeChatAp:Z

    .line 166
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mStoreName:Ljava/lang/String;

    .line 168
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mCurrentBssid:Ljava/lang/String;

    .line 169
    new-instance v0, Lcom/android/settings/wifi/WeChatAccessPoint;

    invoke-direct {v0}, Lcom/android/settings/wifi/WeChatAccessPoint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mWeChatAccessPoint:Lcom/android/settings/wifi/WeChatAccessPoint;

    .line 175
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsSharedAp:Z

    .line 176
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mExpiration:Ljava/lang/String;

    .line 184
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 185
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mPreviousSummary:Ljava/lang/String;

    .line 186
    iput v2, p0, Lcom/android/settings/wifi/AccessPoint;->mId:I

    .line 363
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 364
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 365
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Landroid/net/wifi/ScanResult;
    .param p3, "pickerdialog"    # Z

    .prologue
    const v1, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 375
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 135
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 136
    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->order:I

    .line 137
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->isHs20Ap:Z

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    .line 139
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->isDcm:Z

    .line 141
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->isHidden:Z

    .line 142
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->isPickerDialog:Z

    .line 143
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsCaptivePortal:Z

    .line 144
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsAuthenticated:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mSkipInternetCheck:Z

    .line 147
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 152
    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSeen:J

    .line 159
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 161
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaAp:Z

    .line 162
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaIcon:Z

    .line 165
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsWeChatAp:Z

    .line 166
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mStoreName:Ljava/lang/String;

    .line 168
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mCurrentBssid:Ljava/lang/String;

    .line 169
    new-instance v0, Lcom/android/settings/wifi/WeChatAccessPoint;

    invoke-direct {v0}, Lcom/android/settings/wifi/WeChatAccessPoint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mWeChatAccessPoint:Lcom/android/settings/wifi/WeChatAccessPoint;

    .line 175
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsSharedAp:Z

    .line 176
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mExpiration:Ljava/lang/String;

    .line 184
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 185
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mPreviousSummary:Ljava/lang/String;

    .line 186
    iput v2, p0, Lcom/android/settings/wifi/AccessPoint;->mId:I

    .line 376
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 377
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 378
    iput-boolean p3, p0, Lcom/android/settings/wifi/AccessPoint;->isPickerDialog:Z

    .line 379
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const v1, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 356
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 135
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 136
    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->order:I

    .line 137
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->isHs20Ap:Z

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    .line 139
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->isDcm:Z

    .line 141
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->isHidden:Z

    .line 142
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->isPickerDialog:Z

    .line 143
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsCaptivePortal:Z

    .line 144
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsAuthenticated:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mSkipInternetCheck:Z

    .line 147
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 152
    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSeen:J

    .line 159
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 161
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaAp:Z

    .line 162
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaIcon:Z

    .line 165
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsWeChatAp:Z

    .line 166
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mStoreName:Ljava/lang/String;

    .line 168
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mCurrentBssid:Ljava/lang/String;

    .line 169
    new-instance v0, Lcom/android/settings/wifi/WeChatAccessPoint;

    invoke-direct {v0}, Lcom/android/settings/wifi/WeChatAccessPoint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mWeChatAccessPoint:Lcom/android/settings/wifi/WeChatAccessPoint;

    .line 175
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsSharedAp:Z

    .line 176
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mExpiration:Ljava/lang/String;

    .line 184
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 185
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mPreviousSummary:Ljava/lang/String;

    .line 186
    iput v2, p0, Lcom/android/settings/wifi/AccessPoint;->mId:I

    .line 357
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 358
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 359
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "pickerdialog"    # Z

    .prologue
    const v1, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 368
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 135
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 136
    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->order:I

    .line 137
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->isHs20Ap:Z

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    .line 139
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->isDcm:Z

    .line 141
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->isHidden:Z

    .line 142
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->isPickerDialog:Z

    .line 143
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsCaptivePortal:Z

    .line 144
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsAuthenticated:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mSkipInternetCheck:Z

    .line 147
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 152
    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSeen:J

    .line 159
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 161
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaAp:Z

    .line 162
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaIcon:Z

    .line 165
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsWeChatAp:Z

    .line 166
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mStoreName:Ljava/lang/String;

    .line 168
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mCurrentBssid:Ljava/lang/String;

    .line 169
    new-instance v0, Lcom/android/settings/wifi/WeChatAccessPoint;

    invoke-direct {v0}, Lcom/android/settings/wifi/WeChatAccessPoint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mWeChatAccessPoint:Lcom/android/settings/wifi/WeChatAccessPoint;

    .line 175
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsSharedAp:Z

    .line 176
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mExpiration:Ljava/lang/String;

    .line 184
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 185
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mPreviousSummary:Ljava/lang/String;

    .line 186
    iput v2, p0, Lcom/android/settings/wifi/AccessPoint;->mId:I

    .line 369
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 370
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 371
    iput-boolean p3, p0, Lcom/android/settings/wifi/AccessPoint;->isPickerDialog:Z

    .line 372
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedState"    # Landroid/os/Bundle;

    .prologue
    const v2, 0x7fffffff

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 382
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 134
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 135
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 136
    iput v2, p0, Lcom/android/settings/wifi/AccessPoint;->order:I

    .line 137
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->isHs20Ap:Z

    .line 138
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    .line 139
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/AccessPoint;->isDcm:Z

    .line 141
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->isHidden:Z

    .line 142
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->isPickerDialog:Z

    .line 143
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->mIsCaptivePortal:Z

    .line 144
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->mIsAuthenticated:Z

    .line 145
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->mSkipInternetCheck:Z

    .line 147
    sget-object v1, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 152
    iput v2, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 153
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/settings/wifi/AccessPoint;->mSeen:J

    .line 159
    iput-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 161
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaAp:Z

    .line 162
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaIcon:Z

    .line 165
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->mIsWeChatAp:Z

    .line 166
    iput-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mStoreName:Ljava/lang/String;

    .line 168
    iput-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mCurrentBssid:Ljava/lang/String;

    .line 169
    new-instance v1, Lcom/android/settings/wifi/WeChatAccessPoint;

    invoke-direct {v1}, Lcom/android/settings/wifi/WeChatAccessPoint;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mWeChatAccessPoint:Lcom/android/settings/wifi/WeChatAccessPoint;

    .line 175
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->mIsSharedAp:Z

    .line 176
    iput-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mExpiration:Ljava/lang/String;

    .line 184
    iput-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 185
    iput-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mPreviousSummary:Ljava/lang/String;

    .line 186
    iput v4, p0, Lcom/android/settings/wifi/AccessPoint;->mId:I

    .line 385
    :try_start_0
    const-string v1, "key_config"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 393
    :cond_0
    const-string v1, "key_scanresult"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 394
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v1, :cond_1

    .line 395
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 397
    :cond_1
    const-string v1, "key_wifiinfo"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 398
    const-string v1, "key_detailedstate"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 399
    const-string v1, "key_detailedstate"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 401
    :cond_2
    const-string v1, "key_picker"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/AccessPoint;->isPickerDialog:Z

    .line 402
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 403
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Settings.AccessPoint"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iput-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    goto :goto_0
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;
    .locals 6
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 329
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v4, "WPA-PSK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 330
    .local v1, "wpa":Z
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v4, "WPA2-PSK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 331
    .local v2, "wpa2":Z
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v4, "FT/PSK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 332
    .local v0, "ft":Z
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 333
    sget-object v3, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 344
    :goto_0
    return-object v3

    .line 334
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 335
    sget-object v3, Lcom/android/settings/wifi/AccessPoint$PskType;->FT_WPA2:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 336
    :cond_1
    if-eqz v2, :cond_2

    .line 337
    sget-object v3, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA2:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 338
    :cond_2
    if-eqz v1, :cond_3

    .line 339
    sget-object v3, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 340
    :cond_3
    if-eqz v0, :cond_4

    .line 341
    sget-object v3, Lcom/android/settings/wifi/AccessPoint$PskType;->FT:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 343
    :cond_4
    const-string v3, "Settings.AccessPoint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received abnormal flag string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    sget-object v3, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 218
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_WAPI:Z

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x4

    .line 235
    :goto_0
    return v0

    .line 221
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    const/4 v0, 0x5

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    const/4 v0, 0x1

    goto :goto_0

    .line 227
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "FT/PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 229
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 230
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "FT/EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "CCKM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 233
    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    .line 235
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 7
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 196
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v0, v4

    .line 214
    :cond_1
    :goto_0
    return v0

    .line 200
    :cond_2
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v0, v3

    .line 204
    goto :goto_0

    .line 206
    :cond_4
    sget-boolean v3, Lcom/android/settings/Utils;->SUPPORT_WAPI:Z

    if-eqz v3, :cond_6

    .line 207
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 208
    const/4 v0, 0x4

    goto :goto_0

    .line 210
    :cond_5
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v2

    .line 211
    goto :goto_0

    .line 214
    :cond_6
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private internalCompareTo(Landroid/preference/Preference;Z)I
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "ignoreOrder"    # Z

    .prologue
    const/4 v6, 0x5

    const v5, 0x7fffffff

    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 602
    instance-of v4, p1, Lcom/android/settings/wifi/AccessPoint;

    if-nez v4, :cond_1

    .line 628
    :cond_0
    :goto_0
    return v0

    :cond_1
    move-object v1, p1

    .line 605
    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    .line 606
    .local v1, "other":Lcom/android/settings/wifi/AccessPoint;
    const/4 v2, 0x0

    .line 607
    .local v2, "value":I
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 609
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v4, :cond_2

    move v0, v3

    goto :goto_0

    .line 610
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v4, :cond_3

    iget-object v4, v1, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v4, :cond_0

    .line 613
    :cond_3
    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    if-eq v4, v5, :cond_4

    iget v4, v1, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    if-ne v4, v5, :cond_4

    move v0, v3

    goto :goto_0

    .line 614
    :cond_4
    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    if-ne v4, v5, :cond_5

    iget v4, v1, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    if-ne v4, v5, :cond_0

    .line 617
    :cond_5
    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v4, v3, :cond_6

    iget v4, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v4, v3, :cond_6

    move v0, v3

    .line 618
    goto :goto_0

    .line 619
    :cond_6
    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v4, v3, :cond_7

    iget v4, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v4, v3, :cond_0

    .line 623
    :cond_7
    iget v3, v1, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v3, v6}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v3

    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v4, v6}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v4

    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 624
    .local v0, "difference":I
    if-nez v0, :cond_0

    .line 628
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static isVendorAccessPoint(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p0, "info"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x1

    .line 1191
    if-eqz p0, :cond_1

    .line 1195
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1196
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1197
    .local v0, "ssid":Ljava/lang/String;
    sget-object v2, Lcom/android/settings/Utils;->CONFIG_VENDOR_SSID_LIST:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1209
    .end local v0    # "ssid":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 1192
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1201
    .restart local v0    # "ssid":Ljava/lang/String;
    :cond_2
    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-eqz v2, :cond_3

    .line 1202
    const-string v2, "SKT"

    sget-object v3, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "T wifi zone_secure"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1209
    .end local v0    # "ssid":Ljava/lang/String;
    :cond_3
    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    goto :goto_0
.end method

.method private isWeChatAccessPoint()Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    .line 1217
    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v2, v6, :cond_1

    .line 1218
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_0

    .line 1219
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1220
    .local v0, "context":Landroid/content/Context;
    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1223
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1225
    .local v1, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_1

    .line 1226
    const-string v2, "Settings.AccessPoint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWeChatAccessPoint, wifiConfiguration.isWeChatAp : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->isWeChatAp:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->isWeChatAp:Z

    if-eqz v2, :cond_1

    move v2, v3

    .line 1262
    .end local v1    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return v2

    .line 1234
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mWeChatAccessPoint:Lcom/android/settings/wifi/WeChatAccessPoint;

    if-eqz v2, :cond_5

    .line 1235
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v4, :cond_4

    .line 1236
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_2

    .line 1237
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mCurrentBssid:Ljava/lang/String;

    .line 1238
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mCurrentBssid:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1239
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mCurrentBssid:Ljava/lang/String;

    .line 1248
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mWeChatAccessPoint:Lcom/android/settings/wifi/WeChatAccessPoint;

    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mCurrentBssid:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/android/settings/wifi/WeChatAccessPoint;->isWeChatAccessPoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mStoreName:Ljava/lang/String;

    .line 1250
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mStoreName:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1251
    const-string v2, "Settings.AccessPoint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWeChatAccessPoint: mCurrentBssid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mCurrentBssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mStoreName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mStoreName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mStoreName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mSavedStoreName:Ljava/lang/String;

    .line 1254
    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v2, v6, :cond_3

    .line 1255
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mWeChatAccessPoint:Lcom/android/settings/wifi/WeChatAccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/settings/wifi/WeChatAccessPoint;->saveConfiguration(Landroid/content/Context;IZ)V

    :cond_3
    move v2, v3

    .line 1258
    goto :goto_0

    .line 1243
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "any"

    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1244
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mCurrentBssid:Ljava/lang/String;

    goto :goto_1

    .line 1262
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 416
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 417
    const-string v0, "WeChatWiFi"

    sget-object v2, Lcom/android/settings/Utils;->CONFIG_SOCIAL_SVC_INTEGRATION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v0, "any"

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 419
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mCurrentBssid:Ljava/lang/String;

    .line 424
    :cond_0
    :goto_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 426
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    .line 427
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 428
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-ne v0, v1, :cond_a

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->isHs20Ap:Z

    .line 429
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 430
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->isHidden:Z

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    .line 432
    const-string v0, "Settings.AccessPoint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadConfig: config.allowedKeyManagement: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 440
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 443
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_4
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 446
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_5
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 449
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_6
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 452
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_7
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->mIsSharedAp:Z

    .line 456
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->expiration:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mExpiration:Ljava/lang/String;

    .line 459
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->mIsCaptivePortal:Z

    .line 460
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->mIsAuthenticated:Z

    .line 461
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSkipInternetCheck:Z

    .line 464
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->secFlags:Ljava/util/BitSet;

    .line 466
    return-void

    .line 416
    :cond_8
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 420
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "any"

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mCurrentBssid:Ljava/lang/String;

    goto/16 :goto_1

    .line 428
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .locals 8
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 469
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 470
    const-string v0, "WeChatWiFi"

    sget-object v3, Lcom/android/settings/Utils;->CONFIG_SOCIAL_SVC_INTEGRATION:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string v0, "any"

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 472
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mCurrentBssid:Ljava/lang/String;

    .line 477
    :cond_0
    :goto_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 479
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    .line 480
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_d

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 481
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "HS20"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->isHs20Ap:Z

    .line 482
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v0, v4, :cond_1

    .line 483
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 484
    :cond_1
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 485
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    .line 488
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "FT/PSK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "-EAP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 492
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "FT/EAP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 495
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    :cond_4
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "CCKM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 498
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_5
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 501
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_6
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 504
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_7
    iget-boolean v0, p1, Landroid/net/wifi/ScanResult;->is5GHzVsi:Z

    if-eqz v0, :cond_8

    .line 507
    iput-boolean v1, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaAp:Z

    .line 510
    :cond_8
    iget-wide v4, p1, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v6, p0, Lcom/android/settings/wifi/AccessPoint;->mSeen:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_9

    .line 511
    iget-wide v4, p1, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v4, p0, Lcom/android/settings/wifi/AccessPoint;->mSeen:J

    .line 515
    :cond_9
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->secFlags:Ljava/util/BitSet;

    .line 516
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "SEC80"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 517
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->secFlags:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 519
    :cond_a
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "SEC21"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 520
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->secFlags:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 523
    :cond_b
    return-void

    .line 473
    :cond_c
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "any"

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mCurrentBssid:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    move v0, v2

    .line 480
    goto/16 :goto_1
.end method

.method private refresh()V
    .locals 5

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 921
    .local v1, "context":Landroid/content/Context;
    const-string v2, "WeChatWiFi"

    sget-object v3, Lcom/android/settings/Utils;->CONFIG_SOCIAL_SVC_INTEGRATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 922
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->isWeChatAccessPoint()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsWeChatAp:Z

    .line 925
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/wifi/AccessPoint;->updateIcon(ILandroid/content/Context;)V

    .line 927
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_1

    .line 928
    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 931
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_3

    .line 933
    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#ff"

    const-string v4, "#"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 934
    .local v0, "color":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<font color="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 943
    .end local v0    # "color":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 944
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 945
    return-void

    .line 935
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_5

    .line 936
    :cond_4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#ff"

    const-string v4, "#"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 937
    .restart local v0    # "color":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<font color="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 939
    .end local v0    # "color":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 798
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 799
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 801
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 803
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method checkIfSame(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 648
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 650
    const/4 v0, 0x1

    .line 652
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkIfSame(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 658
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 659
    .local v0, "other":Lcom/android/settings/wifi/AccessPoint;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 660
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getSecurity()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 661
    const/4 v1, 0x1

    .line 664
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 599
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/AccessPoint;->internalCompareTo(Landroid/preference/Preference;Z)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 633
    instance-of v1, p1, Lcom/android/settings/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 634
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/android/settings/wifi/AccessPoint;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected generateOpenNetworkConfig()V
    .locals 2

    .prologue
    .line 1131
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_0

    .line 1132
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 1138
    :goto_0
    return-void

    .line 1135
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1136
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1137
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method public getApIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mId:I

    return v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 775
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 776
    const/4 v0, -0x1

    .line 778
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method getRssi()I
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    return v0
.end method

.method public getSecurity()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    return v0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 9
    .param p1, "concise"    # Z

    .prologue
    const v8, 0x7f0e0426

    const v7, 0x7f0e0425

    const/16 v6, 0x9

    const/4 v5, 0x7

    const v4, 0x7f0e0411

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 262
    .local v0, "context":Landroid/content/Context;
    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    packed-switch v2, :pswitch_data_0

    .line 324
    if-eqz p1, :cond_e

    const-string v2, ""

    :goto_0
    return-object v2

    .line 264
    :pswitch_0
    new-instance v1, Ljava/lang/String;

    if-eqz p1, :cond_0

    const v2, 0x7f0e0019

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 267
    .local v1, "securityString":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 264
    .end local v1    # "securityString":Ljava/lang/String;
    :cond_0
    const v2, 0x7f0e0020

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 273
    .restart local v1    # "securityString":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 275
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 280
    :cond_3
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 282
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 287
    :cond_5
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    move-object v2, v1

    .line 290
    goto/16 :goto_0

    .line 293
    .end local v1    # "securityString":Ljava/lang/String;
    :pswitch_1
    sget-object v2, Lcom/android/settings/wifi/AccessPoint$1;->$SwitchMap$com$android$settings$wifi$AccessPoint$PskType:[I

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint$PskType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 311
    if-eqz p1, :cond_c

    const v2, 0x7f0e0018

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 295
    :pswitch_2
    if-eqz p1, :cond_7

    const v2, 0x7f0e0015

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    const v2, 0x7f0e001c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 298
    :pswitch_3
    if-eqz p1, :cond_8

    const v2, 0x7f0e0016

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    const v2, 0x7f0e001d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 301
    :pswitch_4
    if-eqz p1, :cond_9

    const v2, 0x7f0e0017

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_9
    const v2, 0x7f0e001e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 304
    :pswitch_5
    if-eqz p1, :cond_a

    const v2, 0x7f0e0423

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_a
    const v2, 0x7f0e0427

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 307
    :pswitch_6
    if-eqz p1, :cond_b

    const v2, 0x7f0e0424

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_b
    const v2, 0x7f0e0428

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 311
    :cond_c
    const v2, 0x7f0e001f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 315
    :pswitch_7
    if-eqz p1, :cond_d

    const v2, 0x7f0e0014

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_d
    const v2, 0x7f0e001b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 319
    :pswitch_8
    const v2, 0x7f0e042b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 321
    :pswitch_9
    const v2, 0x7f0e042c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 324
    :cond_e
    const v2, 0x7f0e001a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 293
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getSettingsSummary()Ljava/lang/String;
    .locals 18

    .prologue
    .line 948
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 949
    .local v2, "context":Landroid/content/Context;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 951
    .local v3, "summary":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v14, :cond_f

    .line 952
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v15, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v14, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    .line 956
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    .line 957
    const v14, 0x7f0e034d

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/wifi/AccessPoint;->mIsWeChatAp:Z

    if-eqz v14, :cond_1

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v14, v15}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v14, v15}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1078
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mStoreName:Ljava/lang/String;

    if-eqz v14, :cond_19

    .line 1079
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    .line 1080
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mStoreName:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    :cond_1
    :goto_1
    sget v14, Lcom/android/settings/wifi/WifiSettings;->mVerboseLogging:I

    if-lez v14, :cond_5

    .line 1090
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v14, :cond_2

    .line 1091
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " (f="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v15}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AccessPoint;->getVisibilityStatus()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-lez v14, :cond_5

    .line 1095
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-wide v14, v14, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    .line 1097
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1098
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-wide v14, v14, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    sub-long v14, v10, v14

    const-wide/16 v16, 0x3e8

    div-long v4, v14, v16

    .line 1099
    .local v4, "diff":J
    const-wide/16 v14, 0x3c

    rem-long v12, v4, v14

    .line 1100
    .local v12, "sec":J
    const-wide/16 v14, 0x3c

    div-long v14, v4, v14

    const-wide/16 v16, 0x3c

    rem-long v8, v14, v16

    .line 1101
    .local v8, "min":J
    const-wide/16 v14, 0x3c

    div-long v14, v8, v14

    const-wide/16 v16, 0x3c

    rem-long v6, v14, v16

    .line 1102
    .local v6, "hour":J
    const-string v14, ", "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-lez v14, :cond_3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "h "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "m "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "s "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    .end local v4    # "diff":J
    .end local v6    # "hour":J
    .end local v8    # "min":J
    .end local v10    # "now":J
    .end local v12    # "sec":J
    :cond_4
    const-string v14, ")"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_1a

    .line 1112
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mPreviousSummary:Ljava/lang/String;

    .line 1116
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 958
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v15, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v14, v15, :cond_c

    .line 960
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    .line 961
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "wifi_watchdog_poor_network_test_enabled"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    .line 963
    sget v14, Lcom/android/settings/wifi/WifiSettings;->mIsReconn:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    .line 964
    const v14, 0x7f0e040e

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 966
    :cond_7
    invoke-static {v2}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    .line 967
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v2, v14}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 969
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mPreviousSummary:Ljava/lang/String;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mPreviousSummary:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_9

    .line 970
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mPreviousSummary:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 972
    :cond_9
    const v14, 0x7f0e036f

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 976
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mPreviousSummary:Ljava/lang/String;

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mPreviousSummary:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_b

    .line 977
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mPreviousSummary:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 978
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mPreviousSummary:Ljava/lang/String;

    if-nez v14, :cond_0

    .line 979
    const v14, 0x7f0e058e

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 981
    :cond_c
    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v14, v15}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/wifi/AccessPoint;->mIsCaptivePortal:Z

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/wifi/AccessPoint;->mIsAuthenticated:Z

    if-nez v14, :cond_d

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/wifi/AccessPoint;->mSkipInternetCheck:Z

    if-nez v14, :cond_d

    .line 985
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    .line 986
    const v14, 0x7f0e16a7

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 988
    :cond_d
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    .line 990
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v15, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v14, v15, :cond_e

    .line 991
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    .line 992
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v2, v14}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 994
    :cond_e
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    .line 995
    const v14, 0x7f0e058e

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 998
    :cond_f
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v15, 0x7fffffff

    if-ne v14, v15, :cond_11

    .line 999
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/wifi/AccessPoint;->isDcm:Z

    if-nez v14, :cond_10

    const-string v14, "CMCC"

    sget-object v15, Lcom/android/settings/Utils;->CONFIG_WIFI_NOTIFICATION_STYLE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1000
    :cond_10
    const v14, 0x7f0e0027

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1003
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-nez v14, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v15, 0x80

    if-lt v14, v15, :cond_18

    .line 1007
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v15, 0x80

    if-lt v14, v15, :cond_16

    .line 1009
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    .line 1010
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v15, 0xa1

    if-ne v14, v15, :cond_14

    .line 1011
    const v14, 0x7f0e0023

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1012
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_15

    .line 1013
    const v14, 0x7f0e0409

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1015
    :cond_15
    const v14, 0x7f0e0026

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1018
    :cond_16
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    .line 1019
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v14, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 1061
    :pswitch_1
    const v14, 0x7f0e0023

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1022
    :pswitch_2
    const v14, 0x7f0e0026

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1025
    :pswitch_3
    const v14, 0x7f0e0409

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1032
    :pswitch_4
    const v14, 0x7f0e040a

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1035
    :pswitch_5
    const v14, 0x7f0e040b

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1038
    :pswitch_6
    const v14, 0x7f0e0022

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1041
    :pswitch_7
    const v14, 0x7f0e0023

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1044
    :pswitch_8
    const v14, 0x7f0e0023

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1047
    :pswitch_9
    const v14, 0x7f0e0023

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1050
    :pswitch_a
    const v14, 0x7f0e040a

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1053
    :pswitch_b
    sget-boolean v14, Lcom/android/settings/Utils;->ENABLE_DISC_BUTTON_APNLIST:Z

    if-eqz v14, :cond_17

    .line 1054
    const v14, 0x7f0e0407

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1056
    :cond_17
    const v14, 0x7f0e0022

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1064
    :pswitch_c
    const v14, 0x7f0e0023

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1069
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_0

    .line 1070
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/wifi/AccessPoint;->isDcm:Z

    if-eqz v14, :cond_0

    .line 1071
    const v14, 0x7f0e0022

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1081
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mSavedStoreName:Ljava/lang/String;

    if-eqz v14, :cond_1

    .line 1082
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    .line 1083
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mSavedStoreName:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1114
    :cond_1a
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    goto/16 :goto_2

    .line 1019
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_b
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public getVisibilityStatus()Ljava/lang/String;
    .locals 20

    .prologue
    .line 828
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 830
    .local v13, "visibility":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 832
    .local v6, "now":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v14, :cond_1

    .line 833
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 834
    .local v2, "bssid":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 835
    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    :cond_0
    const-string v14, " sc="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget v15, v15, Landroid/net/wifi/WifiInfo;->score:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    const-string v14, "tx=%.1f,"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    const-string v14, "%.1f,"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    const-string v14, "%.1f "

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    const-string v14, "rx=%.1f"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    .end local v2    # "bssid":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    if-eqz v14, :cond_e

    .line 846
    sget v12, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 847
    .local v12, "rssi5":I
    sget v11, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 848
    .local v11, "rssi24":I
    const/4 v8, 0x0

    .line 849
    .local v8, "num5":I
    const/4 v5, 0x0

    .line 850
    .local v5, "num24":I
    const/4 v9, 0x0

    .line 851
    .local v9, "numBlackListed":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v14}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v4

    .line 852
    .local v4, "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/ScanResult;

    .line 853
    .local v10, "result":Landroid/net/wifi/ScanResult;
    iget-wide v14, v10, Landroid/net/wifi/ScanResult;->seen:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_2

    .line 856
    iget v14, v10, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    if-eqz v14, :cond_3

    .line 857
    add-int/lit8 v9, v9, 0x1

    .line 859
    :cond_3
    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v15, 0x1324

    if-le v14, v15, :cond_5

    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v15, 0x170c

    if-ge v14, v15, :cond_5

    .line 863
    add-int/lit8 v8, v8, 0x1

    .line 872
    :cond_4
    :goto_1
    iget-wide v14, v10, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v6, v14

    const-wide/16 v16, 0x4e20

    cmp-long v14, v14, v16

    if-gtz v14, :cond_2

    .line 874
    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v15, 0x1324

    if-le v14, v15, :cond_6

    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v15, 0x170c

    if-ge v14, v15, :cond_6

    .line 876
    iget v14, v10, Landroid/net/wifi/ScanResult;->level:I

    if-le v14, v12, :cond_2

    .line 877
    iget v12, v10, Landroid/net/wifi/ScanResult;->level:I

    goto :goto_0

    .line 864
    :cond_5
    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v15, 0x960

    if-le v14, v15, :cond_4

    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v15, 0x9c4

    if-ge v14, v15, :cond_4

    .line 868
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 879
    :cond_6
    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v15, 0x960

    if-le v14, v15, :cond_2

    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v15, 0x9c4

    if-ge v14, v15, :cond_2

    .line 881
    iget v14, v10, Landroid/net/wifi/ScanResult;->level:I

    if-le v14, v11, :cond_2

    .line 882
    iget v11, v10, Landroid/net/wifi/ScanResult;->level:I

    goto :goto_0

    .line 886
    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    :cond_7
    const-string v14, " ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    if-gtz v5, :cond_8

    sget v14, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-le v11, v14, :cond_9

    .line 888
    :cond_8
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    :cond_9
    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    if-gtz v8, :cond_a

    sget v14, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-le v12, v14, :cond_b

    .line 894
    :cond_a
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    :cond_b
    if-lez v9, :cond_c

    .line 899
    const-string v14, "!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    :cond_c
    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    .end local v5    # "num24":I
    .end local v8    # "num5":I
    .end local v9    # "numBlackListed":I
    .end local v11    # "rssi24":I
    .end local v12    # "rssi5":I
    :cond_d
    :goto_2
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 902
    :cond_e
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v15, 0x7fffffff

    if-eq v14, v15, :cond_d

    .line 903
    const-string v14, ", ss="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v14, :cond_d

    .line 906
    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    iget v14, v14, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    .line 641
    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    .line 642
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    .line 643
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    .line 644
    return v0
.end method

.method public isSupportedSecurityType()Z
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x7

    const/4 v2, 0x1

    .line 1142
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1167
    :cond_0
    :goto_0
    return v2

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1152
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1157
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1162
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public isVendorAccessPoint()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1172
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1176
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_3

    .line 1177
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v2, :cond_2

    .line 1187
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1173
    goto :goto_0

    .line 1179
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-eqz v2, :cond_3

    .line 1180
    const-string v2, "SKT"

    sget-object v3, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "T wifi zone_secure"

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 1187
    goto :goto_0
.end method

.method public matches(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v1

    if-ne v0, v1, :cond_0

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
    const/4 v4, 0x0

    .line 527
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 528
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/android/settings/wifi/AccessPoint;->updateIcon(ILandroid/content/Context;)V

    .line 530
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 532
    .local v1, "summaryView":Landroid/widget/TextView;
    iget-boolean v3, p0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 535
    .local v2, "titleView":Landroid/widget/TextView;
    iget-boolean v3, p0, Lcom/android/settings/wifi/AccessPoint;->isPickerDialog:Z

    if-eqz v3, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a007f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 537
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c01f2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 538
    .local v0, "paddingLeftRight":I
    invoke-virtual {p1, v0, v4, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 541
    .end local v0    # "paddingLeftRight":I
    :cond_0
    return-void

    .line 532
    .end local v2    # "titleView":Landroid/widget/TextView;
    :cond_1
    const/16 v3, 0x8

    goto :goto_0
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 406
    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 407
    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 408
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 409
    const-string v0, "key_picker"

    iget-boolean v1, p0, Lcom/android/settings/wifi/AccessPoint;->isPickerDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 410
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_0

    .line 411
    const-string v0, "key_detailedstate"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_0
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/android/settings/wifi/AccessPoint;->mId:I

    .line 189
    return-void
.end method

.method public setShowSummary(Z)V
    .locals 0
    .param p1, "showSummary"    # Z

    .prologue
    .line 816
    iput-boolean p1, p0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    .line 817
    return-void
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 5
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    const/4 v4, 0x0

    .line 736
    const/4 v1, 0x0

    .line 737
    .local v1, "reorder":Z
    if-eqz p1, :cond_6

    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 739
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_5

    const/4 v1, 0x1

    .line 742
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    .line 743
    .local v0, "newRssi":I
    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_0

    .line 744
    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 747
    :cond_0
    const/16 v2, -0xc8

    if-eq v0, v2, :cond_1

    const/16 v2, -0x270f

    if-eq v0, v2, :cond_1

    const/16 v2, -0x7f

    if-eq v0, v2, :cond_1

    .line 748
    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 750
    :cond_1
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 751
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, v2, :cond_2

    .line 752
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 754
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 761
    .end local v0    # "newRssi":I
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 762
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->notifyHierarchyChanged()V

    .line 764
    :cond_4
    return-void

    .line 739
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 755
    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_3

    .line 756
    const/4 v1, 0x1

    .line 757
    iput-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 758
    iput-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 759
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    goto :goto_1
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 6
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v1, 0x1

    .line 667
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->matches(Landroid/net/wifi/ScanResult;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 668
    iget-wide v2, p1, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v4, p0, Lcom/android/settings/wifi/AccessPoint;->mSeen:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 669
    iget-wide v2, p1, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v2, p0, Lcom/android/settings/wifi/AccessPoint;->mSeen:J

    .line 671
    :cond_0
    sget v2, Lcom/android/settings/wifi/WifiSettings;->mVerboseLogging:I

    if-lez v2, :cond_2

    .line 672
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    if-nez v2, :cond_1

    .line 673
    new-instance v2, Landroid/util/LruCache;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Landroid/util/LruCache;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    .line 675
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    :cond_2
    const-string v2, "WeChatWiFi"

    sget-object v3, Lcom/android/settings/Utils;->CONFIG_SOCIAL_SVC_INTEGRATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 679
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v2, :cond_9

    const-string v2, "any"

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 680
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mCurrentBssid:Ljava/lang/String;

    .line 697
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_4

    .line 698
    iget v2, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v2

    if-lez v2, :cond_4

    .line 699
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 700
    .local v0, "oldLevel":I
    iget v2, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v2, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 701
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v2

    if-eq v2, v0, :cond_4

    .line 702
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 706
    .end local v0    # "oldLevel":I
    :cond_4
    const-string v2, "KTT"

    sget-object v3, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/settings/Utils;->PREFERRED_BAND:Ljava/lang/String;

    const-string v3, "11AC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaAp:Z

    if-nez v2, :cond_6

    .line 707
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_a

    .line 708
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p1, Landroid/net/wifi/ScanResult;->is5GHzVsi:Z

    if-eqz v2, :cond_5

    .line 709
    iput-boolean v1, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaAp:Z

    .line 715
    :cond_5
    :goto_1
    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaAp:Z

    if-eqz v2, :cond_6

    .line 716
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 720
    :cond_6
    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsWeChatAp:Z

    if-eqz v2, :cond_7

    .line 721
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 725
    :cond_7
    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 726
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 728
    :cond_8
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 732
    :goto_2
    return v1

    .line 681
    :cond_9
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v2, "any"

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 682
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mCurrentBssid:Ljava/lang/String;

    goto/16 :goto_0

    .line 712
    :cond_a
    iget-boolean v2, p1, Landroid/net/wifi/ScanResult;->is5GHzVsi:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaAp:Z

    goto :goto_1

    .line 732
    :cond_b
    const/4 v1, 0x0

    goto :goto_2
.end method

.method updateConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 786
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 787
    return-void
.end method

.method protected updateIcon(ILandroid/content/Context;)V
    .locals 5
    .param p1, "level"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 547
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 550
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/android/settings/wifi/AccessPoint;->wifi_signal_attributes:[I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 554
    .local v1, "sld":Landroid/graphics/drawable/StateListDrawable;
    if-nez v0, :cond_6

    .line 555
    if-eqz v1, :cond_1

    .line 556
    const-string v2, "KTT"

    sget-object v3, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/settings/Utils;->PREFERRED_BAND:Ljava/lang/String;

    const-string v3, "11AC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaAp:Z

    if-eqz v2, :cond_3

    .line 557
    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaIcon:Z

    if-nez v2, :cond_0

    .line 558
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaIcon:Z

    .line 559
    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/settings/wifi/AccessPoint;->STATE_GIGA_SECURED:[I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 566
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 567
    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 568
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 592
    :cond_1
    :goto_2
    return-void

    .line 559
    :cond_2
    sget-object v2, Lcom/android/settings/wifi/AccessPoint;->STATE_GIGA_NONE:[I

    goto :goto_0

    .line 561
    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsWeChatAp:Z

    if-eqz v2, :cond_4

    .line 562
    sget-object v2, Lcom/android/settings/wifi/AccessPoint;->STATE_WECHAT:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_1

    .line 564
    :cond_4
    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/settings/wifi/AccessPoint;->STATE_SECURED:[I

    :goto_3
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/android/settings/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_3

    .line 571
    :cond_6
    const/4 v2, -0x1

    if-ne p1, v2, :cond_7

    .line 572
    const/4 p1, 0x5

    .line 574
    :cond_7
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 575
    const-string v2, "KTT"

    sget-object v3, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/settings/Utils;->PREFERRED_BAND:Ljava/lang/String;

    const-string v3, "11AC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaAp:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaIcon:Z

    if-nez v2, :cond_9

    .line 576
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaIcon:Z

    .line 577
    if-eqz v1, :cond_1

    .line 578
    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/settings/wifi/AccessPoint;->STATE_GIGA_SECURED:[I

    :goto_4
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 579
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 580
    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 581
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 578
    :cond_8
    sget-object v2, Lcom/android/settings/wifi/AccessPoint;->STATE_GIGA_NONE:[I

    goto :goto_4

    .line 583
    :cond_9
    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsWeChatAp:Z

    if-eqz v2, :cond_1

    .line 584
    if-eqz v1, :cond_1

    .line 585
    sget-object v2, Lcom/android/settings/wifi/AccessPoint;->STATE_WECHAT:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 586
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 587
    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 588
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method
