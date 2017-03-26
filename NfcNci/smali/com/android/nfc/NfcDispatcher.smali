.class Lcom/android/nfc/NfcDispatcher;
.super Ljava/lang/Object;
.source "NfcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field static final DISPATCH_FAIL:I = 0x2

.field static final DISPATCH_SUCCESS:I = 0x1

.field static final DISPATCH_UNLOCK:I = 0x3

.field static final HOMESYNC_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.homesync"

.field static final MSG_RECEIVER_TIMEOUT:I = 0x1

.field static final REG_EXPRESS_PHONE_NUMBER:Ljava/lang/String; = "^([0-9]|[*#(/)N,.;+-])+$"

.field private static final TAG:Ljava/lang/String; = "NfcDispatcher"

.field static final TYPE_NAME_SEC_OOB:Ljava/lang/String; = "application/vnd.sec.oob."

.field static final VALID_PHONE_NUMBER:Ljava/lang/String; = "0123456789*#(/)N,.;+-"

.field static final isSupportAfw:Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceSupportsBluetooth:Z

.field final mHandler:Landroid/os/Handler;

.field private final mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

.field private final mIActivityManager:Landroid/app/IActivityManager;

.field private final mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

.field private mOverrideFilters:[Landroid/content/IntentFilter;

.field private mOverrideIntent:Landroid/app/PendingIntent;

.field private mOverrideTechLists:[[Ljava/lang/String;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mPersonaManager:Landroid/os/PersonaManager;

.field private final mProvisioningMimes:[Ljava/lang/String;

.field private mProvisioningOnly:Z

.field private final mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

.field private final mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;

.field mToast:Landroid/widget/Toast;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 107
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    .line 147
    const-string v0, "ro.config.afw"

    const-string v1, "UNKNOWN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/NfcDispatcher;->isSupportAfw:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverDataParser"    # Lcom/android/nfc/handover/HandoverDataParser;
    .param p3, "provisionOnly"    # Z

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mToast:Landroid/widget/Toast;

    .line 1184
    new-instance v2, Lcom/android/nfc/NfcDispatcher$1;

    invoke-direct {v2, p0}, Lcom/android/nfc/NfcDispatcher$1;-><init>(Lcom/android/nfc/NfcDispatcher;)V

    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mHandler:Landroid/os/Handler;

    .line 153
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    .line 154
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mIActivityManager:Landroid/app/IActivityManager;

    .line 155
    new-instance v2, Lcom/android/nfc/RegisteredComponentCache;

    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "android.nfc.action.TECH_DISCOVERED"

    const-string v5, "android.nfc.action.TECH_DISCOVERED"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/nfc/RegisteredComponentCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContentResolver:Landroid/content/ContentResolver;

    .line 158
    iput-object p2, p0, Lcom/android/nfc/NfcDispatcher;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 159
    new-instance v2, Lcom/android/nfc/ScreenStateHelper;

    invoke-direct {v2, p1}, Lcom/android/nfc/ScreenStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 160
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager;->getInstance()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 161
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/nfc/NfcDispatcher;->mDeviceSupportsBluetooth:Z

    .line 164
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mPersonaManager:Landroid/os/PersonaManager;

    .line 165
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mUserManager:Landroid/os/UserManager;

    .line 168
    monitor-enter p0

    .line 169
    :try_start_0
    iput-boolean p3, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z

    .line 170
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, "provisionMimes":[Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 175
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f060000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 181
    :cond_0
    :goto_1
    iput-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    .line 182
    return-void

    .line 161
    .end local v1    # "provisionMimes":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 177
    .restart local v1    # "provisionMimes":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/nfc/NfcDispatcher;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcDispatcher;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/NfcDispatcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcDispatcher;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static checkForAar(Landroid/nfc/NdefRecord;)Ljava/lang/String;
    .locals 3
    .param p0, "record"    # Landroid/nfc/NdefRecord;

    .prologue
    .line 1154
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v0

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1158
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static checkForSamsungPackage(Landroid/nfc/NdefRecord;)Ljava/lang/String;
    .locals 8
    .param p0, "record"    # Landroid/nfc/NdefRecord;

    .prologue
    const/4 v7, 0x1

    .line 1162
    const-string v1, "samsungapps://ProductDetail/"

    .line 1163
    .local v1, "SamsungPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1164
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v4

    if-ne v4, v7, :cond_1

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v4

    sget-object v5, Landroid/nfc/NdefRecord;->RTD_URI:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1166
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 1167
    .local v3, "payload":Ljava/lang/String;
    const-string v4, "samsungapps://ProductDetail/"

    const/4 v5, 0x0

    const-string v6, "samsungapps://ProductDetail/"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v7, v4, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1168
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1169
    .local v0, "ArStr":[Ljava/lang/String;
    array-length v4, v0

    if-lez v4, :cond_0

    .line 1170
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v0, v4

    .line 1171
    const-string v4, "NfcDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SamsungApp find - name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ArStr":[Ljava/lang/String;
    :cond_0
    move-object v4, v2

    .line 1176
    .end local v3    # "payload":Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private decodeNfcBarcodeUri(Landroid/nfc/tech/NfcBarcode;)Landroid/nfc/NdefMessage;
    .locals 14
    .param p1, "nfcBarcode"    # Landroid/nfc/tech/NfcBarcode;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 695
    const/4 v3, 0x1

    .line 696
    .local v3, "URI_PREFIX_HTTP_WWW":B
    const/4 v2, 0x2

    .line 697
    .local v2, "URI_PREFIX_HTTPS_WWW":B
    const/4 v0, 0x3

    .line 698
    .local v0, "URI_PREFIX_HTTP":B
    const/4 v1, 0x4

    .line 700
    .local v1, "URI_PREFIX_HTTPS":B
    const/4 v5, 0x0

    .line 701
    .local v5, "message":Landroid/nfc/NdefMessage;
    invoke-virtual {p1}, Landroid/nfc/tech/NfcBarcode;->getTag()Landroid/nfc/Tag;

    move-result-object v9

    invoke-virtual {v9}, Landroid/nfc/Tag;->getId()[B

    move-result-object v7

    .line 703
    .local v7, "tagId":[B
    array-length v9, v7

    if-lt v9, v13, :cond_2

    aget-byte v9, v7, v11

    if-eq v9, v11, :cond_0

    aget-byte v9, v7, v11

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    aget-byte v9, v7, v11

    const/4 v10, 0x3

    if-eq v9, v10, :cond_0

    aget-byte v9, v7, v11

    if-ne v9, v13, :cond_2

    .line 710
    :cond_0
    const/4 v4, 0x2

    .line 711
    .local v4, "end":I
    :goto_0
    array-length v9, v7

    add-int/lit8 v9, v9, -0x2

    if-ge v4, v9, :cond_1

    .line 712
    aget-byte v9, v7, v4

    const/4 v10, -0x2

    if-ne v9, v10, :cond_3

    .line 716
    :cond_1
    add-int/lit8 v9, v4, -0x1

    new-array v6, v9, [B

    .line 717
    .local v6, "payload":[B
    array-length v9, v6

    invoke-static {v7, v11, v6, v12, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 718
    new-instance v8, Landroid/nfc/NdefRecord;

    sget-object v9, Landroid/nfc/NdefRecord;->RTD_URI:[B

    invoke-direct {v8, v11, v9, v7, v6}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 720
    .local v8, "uriRecord":Landroid/nfc/NdefRecord;
    new-instance v5, Landroid/nfc/NdefMessage;

    .end local v5    # "message":Landroid/nfc/NdefMessage;
    new-array v9, v12, [Landroid/nfc/NdefRecord;

    invoke-direct {v5, v8, v9}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 722
    .end local v4    # "end":I
    .end local v6    # "payload":[B
    .end local v8    # "uriRecord":Landroid/nfc/NdefRecord;
    .restart local v5    # "message":Landroid/nfc/NdefMessage;
    :cond_2
    return-object v5

    .line 711
    .restart local v4    # "end":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method static extractAarPackages(Landroid/nfc/NdefMessage;)Ljava/util/List;
    .locals 6
    .param p0, "message"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/nfc/NdefMessage;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 996
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 997
    .local v0, "aarPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    .local v1, "arr$":[Landroid/nfc/NdefRecord;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v1, v2

    .line 998
    .local v5, "record":Landroid/nfc/NdefRecord;
    invoke-static {v5}, Lcom/android/nfc/NfcDispatcher;->checkForAar(Landroid/nfc/NdefRecord;)Ljava/lang/String;

    move-result-object v4

    .line 999
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1000
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 997
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1003
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "record":Landroid/nfc/NdefRecord;
    :cond_1
    return-object v0
.end method

.method static extractSamsungPackages(Landroid/nfc/NdefMessage;)Ljava/util/List;
    .locals 6
    .param p0, "message"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/nfc/NdefMessage;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1007
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1008
    .local v0, "SamsungPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    .local v1, "arr$":[Landroid/nfc/NdefRecord;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v1, v2

    .line 1009
    .local v5, "record":Landroid/nfc/NdefRecord;
    invoke-static {v5}, Lcom/android/nfc/NfcDispatcher;->checkForSamsungPackage(Landroid/nfc/NdefRecord;)Ljava/lang/String;

    move-result-object v4

    .line 1010
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1011
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1008
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1014
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "record":Landroid/nfc/NdefRecord;
    :cond_1
    return-object v0
.end method

.method static getAppSearchIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1258
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1259
    .local v0, "market":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1260
    return-object v0
.end method

.method static getSamsungAppSearchIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1180
    .local v0, "market":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "samsungapps://ProductDetail/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1181
    return-object v0
.end method

.method private handleNfcUnlock(Landroid/nfc/Tag;)Z
    .locals 1
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcUnlockManager;->tryUnlock(Landroid/nfc/Tag;)Z

    move-result v0

    return v0
.end method

.method static isComponentEnabled(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 1264
    const/4 v2, 0x0

    .line 1265
    .local v2, "enabled":Z
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    .local v0, "compname":Landroid/content/ComponentName;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1272
    const/4 v2, 0x1

    .line 1277
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 1278
    const-string v3, "NfcDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Component not enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :cond_1
    return v2

    .line 1274
    :catch_0
    move-exception v1

    .line 1275
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized registerReceiver()V
    .locals 3

    .prologue
    .line 1202
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/android/nfc/NfcDispatcher$2;

    invoke-direct {v1, p0}, Lcom/android/nfc/NfcDispatcher$2;-><init>(Lcom/android/nfc/NfcDispatcher;)V

    iput-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 1245
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1246
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1247
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1248
    monitor-exit p0

    return-void

    .line 1202
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized disableProvisioningMode()V
    .locals 1

    .prologue
    .line 193
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchTag(Landroid/nfc/Tag;)I
    .locals 12
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 567
    monitor-enter p0

    .line 568
    :try_start_0
    iget-object v5, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    .line 569
    .local v5, "overrideFilters":[Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    .line 570
    .local v4, "overrideIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;

    .line 571
    .local v6, "overrideTechLists":[[Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z

    .line 572
    .local v9, "provisioningOnly":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    const/4 v10, 0x0

    .line 575
    .local v10, "screenUnlocked":Z
    if-nez v9, :cond_0

    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v0}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 577
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcDispatcher;->handleNfcUnlock(Landroid/nfc/Tag;)Z

    move-result v10

    .line 578
    if-nez v10, :cond_0

    .line 579
    const/4 v0, 0x2

    .line 655
    :goto_0
    return v0

    .line 572
    .end local v4    # "overrideIntent":Landroid/app/PendingIntent;
    .end local v5    # "overrideFilters":[Landroid/content/IntentFilter;
    .end local v6    # "overrideTechLists":[[Ljava/lang/String;
    .end local v9    # "provisioningOnly":Z
    .end local v10    # "screenUnlocked":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 583
    .restart local v4    # "overrideIntent":Landroid/app/PendingIntent;
    .restart local v5    # "overrideFilters":[Landroid/content/IntentFilter;
    .restart local v6    # "overrideTechLists":[[Ljava/lang/String;
    .restart local v9    # "provisioningOnly":Z
    .restart local v10    # "screenUnlocked":Z
    :cond_0
    const/4 v3, 0x0

    .line 584
    .local v3, "message":Landroid/nfc/NdefMessage;
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v7

    .line 585
    .local v7, "ndef":Landroid/nfc/tech/Ndef;
    if-eqz v7, :cond_4

    .line 586
    invoke-virtual {v7}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v3

    .line 594
    :cond_1
    :goto_1
    sget-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "NfcDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dispatch tag: "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " message: "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_2
    new-instance v1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;

    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, p1, v3}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;-><init>(Landroid/content/Context;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;)V

    .line 598
    .local v1, "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    invoke-virtual {p0}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    .line 601
    if-nez v10, :cond_3

    .line 602
    invoke-virtual {p0, v1, p1}, Lcom/android/nfc/NfcDispatcher;->isUnSupportedTag(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z

    .line 605
    :cond_3
    invoke-virtual {p0, v1, v3}, Lcom/android/nfc/NfcDispatcher;->handleInputValidatioin(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 606
    const/4 v0, 0x2

    goto :goto_0

    .line 588
    .end local v1    # "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    :cond_4
    invoke-static {p1}, Landroid/nfc/tech/NfcBarcode;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcBarcode;

    move-result-object v8

    .line 589
    .local v8, "nfcBarcode":Landroid/nfc/tech/NfcBarcode;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/nfc/tech/NfcBarcode;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 590
    invoke-direct {p0, v8}, Lcom/android/nfc/NfcDispatcher;->decodeNfcBarcodeUri(Landroid/nfc/tech/NfcBarcode;)Landroid/nfc/NdefMessage;

    move-result-object v3

    goto :goto_1

    .line 609
    .end local v8    # "nfcBarcode":Landroid/nfc/tech/NfcBarcode;
    .restart local v1    # "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    :cond_5
    invoke-virtual {p0, v1, v3}, Lcom/android/nfc/NfcDispatcher;->handleSecurityPopup(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 610
    const/4 v0, 0x2

    goto :goto_0

    :cond_6
    move-object v0, p0

    move-object v2, p1

    .line 614
    invoke-virtual/range {v0 .. v6}, Lcom/android/nfc/NfcDispatcher;->tryOverrides(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 616
    if-eqz v10, :cond_7

    const/4 v0, 0x3

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    .line 619
    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/nfc/NfcDispatcher;->tryPeripheralHandover(Landroid/nfc/NdefMessage;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 620
    sget-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "NfcDispatcher"

    const-string v2, "matched BT HANDOVER"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_9
    if-eqz v10, :cond_a

    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 624
    :cond_b
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/android/nfc/NfcWifiProtectedSetup;->tryNfcWifiSetup(Landroid/nfc/tech/Ndef;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 625
    sget-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "NfcDispatcher"

    const-string v2, "matched NFC WPS TOKEN"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_c
    if-eqz v10, :cond_d

    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 629
    :cond_e
    invoke-virtual {p0, v1, v3, v9}, Lcom/android/nfc/NfcDispatcher;->tryNdef(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 630
    if-eqz v10, :cond_f

    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 633
    :cond_10
    if-eqz v10, :cond_11

    .line 635
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 638
    :cond_11
    if-eqz v9, :cond_12

    .line 640
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 644
    :cond_12
    invoke-virtual {p0, v1, p1}, Lcom/android/nfc/NfcDispatcher;->tryTech(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 645
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 648
    :cond_13
    invoke-virtual {v1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTagIntent()Landroid/content/Intent;

    .line 649
    invoke-virtual {v1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 650
    sget-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "NfcDispatcher"

    const-string v2, "matched TAG"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_14
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 654
    :cond_15
    sget-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v0, :cond_16

    const-string v0, "NfcDispatcher"

    const-string v2, "no match"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_16
    const/4 v0, 0x2

    goto/16 :goto_0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1284
    monitor-enter p0

    .line 1285
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideTechLists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1288
    monitor-exit p0

    .line 1289
    return-void

    .line 1288
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method extractBtAddr(Ljava/lang/String;Landroid/nfc/NdefMessage;)Ljava/lang/String;
    .locals 8
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "message"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v5, 0x0

    .line 1018
    const-string v2, ""

    .line 1019
    .local v2, "btAddr":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v3, v6, v7

    .line 1020
    .local v3, "firstRecord":Landroid/nfc/NdefRecord;
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1022
    .local v4, "rtn_cmp":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const-string v6, "application/vnd.sec.oob."

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const-string v6, "com.sec.android.homesync"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1024
    :cond_1
    const/16 v0, 0x11

    .line 1025
    .local v0, "BTADDR_LENGTH":I
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    .line 1026
    .local v1, "Payload":[B
    new-instance v2, Ljava/lang/String;

    .end local v2    # "btAddr":Ljava/lang/String;
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 1027
    .restart local v2    # "btAddr":Ljava/lang/String;
    const-string v6, "NfcDispatcher"

    const-string v7, "extractBtAddr : Bluetooth addr : "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const/16 v6, 0x11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_2

    move-object v5, v2

    .line 1036
    .end local v0    # "BTADDR_LENGTH":I
    .end local v1    # "Payload":[B
    :goto_0
    return-object v5

    .line 1031
    .restart local v0    # "BTADDR_LENGTH":I
    .restart local v1    # "Payload":[B
    :cond_2
    const-string v6, "NfcDispatcher"

    const-string v7, "extractBtAddr : invalid btAddr : "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1035
    .end local v0    # "BTADDR_LENGTH":I
    .end local v1    # "Payload":[B
    :cond_3
    const-string v6, "NfcDispatcher"

    const-string v7, "extractBtAddr : failed "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p1, "tagTechs"    # [Ljava/lang/String;
    .param p2, "filterTechs"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1143
    if-eqz p2, :cond_0

    array-length v5, p2

    if-nez v5, :cond_1

    .line 1150
    :cond_0
    :goto_0
    return v4

    .line 1145
    :cond_1
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 1146
    .local v3, "tech":Ljava/lang/String;
    invoke-static {p1, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 1145
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1150
    .end local v3    # "tech":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public handleInputValidatioin(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;)Z
    .locals 17
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 365
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_NFC_EnableInvalidTagPopup"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 366
    const/4 v14, 0x0

    .line 429
    :goto_0
    return v14

    .line 368
    :cond_0
    if-nez p2, :cond_1

    .line 369
    const/4 v14, 0x0

    goto :goto_0

    .line 371
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v12

    .line 372
    .local v12, "tnf":S
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v13

    .line 374
    .local v13, "type":[B
    const/4 v2, 0x0

    .line 375
    .local v2, "checkValidation":Z
    const/4 v10, -0x1

    .line 377
    .local v10, "prefix":I
    const/4 v14, 0x1

    if-ne v12, v14, :cond_2

    .line 378
    sget-object v14, Landroid/nfc/NdefRecord;->RTD_URI:[B

    invoke-static {v13, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v14

    const/4 v15, 0x0

    aget-byte v14, v14, v15

    and-int/lit8 v10, v14, -0x1

    .line 380
    const/4 v2, 0x1

    .line 403
    :cond_2
    :goto_1
    if-eqz v2, :cond_8

    .line 404
    if-ltz v10, :cond_3

    const/16 v14, 0x23

    if-le v10, v14, :cond_6

    .line 405
    :cond_3
    const-string v14, "NfcDispatcher"

    const-string v15, "Invalid Uri Tag"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    const-string v15, "invalidTag"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 407
    const/4 v14, 0x1

    goto :goto_0

    .line 382
    :cond_4
    sget-object v14, Landroid/nfc/NdefRecord;->RTD_SMART_POSTER:[B

    invoke-static {v13, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 384
    :try_start_0
    new-instance v7, Landroid/nfc/NdefMessage;

    invoke-virtual/range {p2 .. p2}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v14

    invoke-direct {v7, v14}, Landroid/nfc/NdefMessage;-><init>([B)V

    .line 385
    .local v7, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v7}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    .local v1, "arr$":[Landroid/nfc/NdefRecord;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v6, :cond_2

    aget-object v8, v1, v5

    .line 386
    .local v8, "nestedRecord":Landroid/nfc/NdefRecord;
    invoke-virtual {v8}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    invoke-virtual {v8}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v14

    sget-object v15, Landroid/nfc/NdefRecord;->RTD_URI:[B

    invoke-static {v14, v15}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 388
    invoke-virtual {v8}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v14

    const/4 v15, 0x0

    aget-byte v14, v14, v15
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    and-int/lit8 v10, v14, -0x1

    .line 389
    const/4 v2, 0x1

    .line 390
    goto :goto_1

    .line 385
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 394
    .end local v1    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "nestedMessage":Landroid/nfc/NdefMessage;
    .end local v8    # "nestedRecord":Landroid/nfc/NdefRecord;
    :catch_0
    move-exception v3

    .line 395
    .local v3, "e":Landroid/nfc/FormatException;
    const/4 v2, 0x0

    .line 399
    goto :goto_1

    .line 397
    .end local v3    # "e":Landroid/nfc/FormatException;
    :catch_1
    move-exception v3

    .line 398
    .local v3, "e":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_1

    .line 409
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :cond_6
    const/4 v14, 0x5

    if-ne v10, v14, :cond_8

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    if-eqz v14, :cond_8

    .line 410
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    .line 411
    .local v11, "telUri":Ljava/lang/String;
    const/4 v14, 0x4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 413
    .local v9, "phoneNumber":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v4, v14, :cond_8

    .line 414
    const-string v14, "0123456789*#(/)N,.;+-"

    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v9, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_7

    .line 415
    const-string v14, "NfcDispatcher"

    const-string v15, "Invalid phone number tag"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    const-string v15, "invalidTag"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 418
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    sget-object v16, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 423
    :goto_4
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 419
    :catch_2
    move-exception v3

    .line 420
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 413
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 429
    .end local v4    # "i":I
    .end local v9    # "phoneNumber":Ljava/lang/String;
    .end local v11    # "telUri":Ljava/lang/String;
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public handleSecurityPopup(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;)Z
    .locals 16
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 433
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_NFC_ConfigSecurityPromptPopup"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 436
    .local v7, "popup":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1

    .line 437
    :cond_0
    const/4 v13, 0x0

    .line 501
    :goto_0
    return v13

    .line 440
    :cond_1
    if-nez p2, :cond_2

    .line 441
    const/4 v13, 0x0

    goto :goto_0

    .line 443
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "all"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "contact"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 444
    :cond_3
    move-object/from16 v5, p2

    .line 445
    .local v5, "message":Landroid/nfc/NdefMessage;
    invoke-virtual {v5}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v9

    .line 446
    .local v9, "records":[Landroid/nfc/NdefRecord;
    const/4 v13, 0x0

    aget-object v8, v9, v13

    .line 447
    .local v8, "record":Landroid/nfc/NdefRecord;
    invoke-virtual {v8}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v6

    .line 448
    .local v6, "payload":[B
    new-instance v12, Ljava/lang/String;

    invoke-virtual {v8}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v13

    const-string v14, "UTF8"

    invoke-static {v14}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 450
    .local v12, "type":Ljava/lang/String;
    const-string v13, "text/x-vcard"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "text/vcard"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 453
    :cond_4
    const-string v1, ""

    .line 456
    .local v1, "endLine":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 457
    .local v2, "is":Ljava/io/ByteArrayInputStream;
    new-instance v11, Ljava/io/InputStreamReader;

    const-string v13, "UTF8"

    invoke-static {v13}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-direct {v11, v2, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 458
    .local v11, "tmpReader":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 461
    .local v4, "mReader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "BEGIN:VCARD"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 463
    :cond_5
    sget-boolean v13, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v13, :cond_6

    const-string v13, "NfcDispatcher"

    const-string v14, "Not found BEGIN:VCARD at first line"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_6
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    const-string v14, "invalidTag"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 465
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    sget-object v15, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 466
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 471
    :cond_7
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v14, "mFNname"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 474
    :goto_1
    if-eqz v3, :cond_9

    .line 475
    const-string v13, ":"

    const/4 v14, 0x2

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 476
    .local v10, "strArray":[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v10, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "TEL"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 477
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v14, "mFNname"

    const/4 v15, 0x1

    aget-object v15, v10, v15

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    sget-boolean v13, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v13, :cond_8

    const-string v13, "NfcDispatcher"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "phoneNumber : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_8
    move-object v1, v3

    .line 485
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 486
    goto :goto_1

    .line 489
    .end local v10    # "strArray":[Ljava/lang/String;
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "END:VCARD"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 490
    sget-boolean v13, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v13, :cond_a

    const-string v13, "NfcDispatcher"

    const-string v14, "Not found END:VCARD at last line"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_a
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    const-string v14, "invalidTag"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 492
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    sget-object v15, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 496
    .end local v2    # "is":Ljava/io/ByteArrayInputStream;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "mReader":Ljava/io/BufferedReader;
    .end local v11    # "tmpReader":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v13

    .line 501
    .end local v1    # "endLine":Ljava/lang/String;
    .end local v5    # "message":Landroid/nfc/NdefMessage;
    .end local v6    # "payload":[B
    .end local v8    # "record":Landroid/nfc/NdefRecord;
    .end local v9    # "records":[Landroid/nfc/NdefRecord;
    .end local v12    # "type":Ljava/lang/String;
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "hasTechFilter"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 788
    if-eqz p2, :cond_2

    .line 789
    move-object v0, p2

    .local v0, "arr$":[Landroid/content/IntentFilter;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 790
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/nfc/NfcDispatcher;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "NfcDispatcher"

    invoke-virtual {v1, v6, p1, v5, v7}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 797
    .end local v0    # "arr$":[Landroid/content/IntentFilter;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    :goto_1
    return v4

    .line 789
    .restart local v0    # "arr$":[Landroid/content/IntentFilter;
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 794
    .end local v0    # "arr$":[Landroid/content/IntentFilter;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    if-eqz p3, :cond_0

    :cond_3
    move v4, v5

    .line 797
    goto :goto_1
.end method

.method isTechMatch(Landroid/nfc/Tag;[[Ljava/lang/String;)Z
    .locals 7
    .param p1, "tag"    # Landroid/nfc/Tag;
    .param p2, "techLists"    # [[Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 801
    if-nez p2, :cond_1

    .line 812
    :cond_0
    :goto_0
    return v5

    .line 805
    :cond_1
    invoke-virtual {p1}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v4

    .line 806
    .local v4, "tagTechs":[Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 807
    move-object v0, p2

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 808
    .local v1, "filterTechs":[Ljava/lang/String;
    invoke-virtual {p0, v4, v1}, Lcom/android/nfc/NfcDispatcher;->filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 809
    const/4 v5, 0x1

    goto :goto_0

    .line 807
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method isUnSupportedTag(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z
    .locals 10
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v6, 0x0

    .line 508
    iget-object v7, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.nxp.mifare"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 550
    :cond_0
    :goto_0
    return v6

    .line 512
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_NFC_ConfigSecurityPromptPopup"

    const-string v9, "mifareclassic"

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 514
    .local v3, "popup":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "all"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mifareclassic"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 515
    sget-boolean v7, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "NfcDispatcher"

    const-string v8, "isUnsupportedTag : This feaure is not set"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 519
    :cond_2
    const/4 v7, 0x3

    invoke-virtual {p2, v7}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 520
    sget-boolean v7, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "NfcDispatcher"

    const-string v8, "isUnSupportedTag : This tag also supports ISO_DEP Tech"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 525
    :cond_3
    const/16 v7, 0x9

    new-array v5, v7, [S

    fill-array-data v5, :array_0

    .line 527
    .local v5, "unSupportedTagTechnology":[S
    invoke-static {p2}, Landroid/nfc/tech/NfcA;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;

    move-result-object v0

    .line 528
    .local v0, "a":Landroid/nfc/tech/NfcA;
    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {v0}, Landroid/nfc/tech/NfcA;->getSak()S

    move-result v4

    .line 532
    .local v4, "sak":I
    :try_start_0
    invoke-virtual {v0}, Landroid/nfc/tech/NfcA;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v7, v5

    if-ge v2, v7, :cond_0

    .line 540
    aget-short v7, v5, v2

    if-ne v4, v7, :cond_5

    .line 541
    iget-object v7, p0, Lcom/android/nfc/NfcDispatcher;->mToast:Landroid/widget/Toast;

    if-eqz v7, :cond_4

    .line 542
    iget-object v7, p0, Lcom/android/nfc/NfcDispatcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v7}, Landroid/widget/Toast;->cancel()V

    .line 543
    const-string v7, "NfcDispatcher"

    const-string v8, "isUnSupportedTag : mToast cancel !!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_4
    iget-object v7, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const v8, 0x7f070022

    invoke-static {v7, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/android/nfc/NfcDispatcher;->mToast:Landroid/widget/Toast;

    .line 546
    iget-object v6, p0, Lcom/android/nfc/NfcDispatcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 547
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 534
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 535
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "NfcDispatcher"

    const-string v8, "Error closing"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 539
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "i":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 525
    :array_0
    .array-data 2
        0x1s
        0x8s
        0x9s
        0x10s
        0x11s
        0x18s
        0x28s
        0x38s
        0x88s
    .end array-data
.end method

.method resumeAppSwitches()V
    .locals 1

    .prologue
    .line 1137
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    :goto_0
    return-void

    .line 1138
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method saveBtAddr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pkg_name"    # Ljava/lang/String;
    .param p2, "btAddr"    # Ljava/lang/String;

    .prologue
    .line 1040
    const-string v2, "NfcDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveBtAddr for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "bt_addr_list"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1042
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1043
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1044
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1045
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 1046
    invoke-direct {p0}, Lcom/android/nfc/NfcDispatcher;->registerReceiver()V

    .line 1050
    :goto_0
    return-void

    .line 1048
    :cond_0
    const-string v2, "NfcDispatcher"

    const-string v3, "mPackageReceiver is not null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "techLists"    # [[Ljava/lang/String;

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcDispatcher"

    const-string v1, "Set Foreground Dispatch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    .line 188
    iput-object p2, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    .line 189
    iput-object p3, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method tryNdef(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;Z)Z
    .locals 24
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "message"    # Landroid/nfc/NdefMessage;
    .param p3, "provisioningOnly"    # Z

    .prologue
    .line 816
    if-nez p2, :cond_0

    .line 817
    const/16 v21, 0x0

    .line 992
    :goto_0
    return v21

    .line 819
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v12

    .line 822
    .local v12, "intent":Landroid/content/Intent;
    if-nez v12, :cond_1

    const/16 v21, 0x0

    goto :goto_0

    .line 824
    :cond_1
    if-eqz p3, :cond_4

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    invoke-virtual {v12}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 827
    :cond_2
    const-string v21, "NfcDispatcher"

    const-string v22, "Dropping NFC intent in provisioning mode."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const/16 v21, 0x0

    goto :goto_0

    .line 831
    :cond_3
    invoke-virtual {v12}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v21

    const-string v22, "application/com.android.managedprovisioning"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    const-string v21, "NONE"

    sget-object v22, Lcom/android/nfc/NfcDispatcher;->isSupportAfw:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 833
    const-string v21, "NfcDispatcher"

    const-string v22, "Dropping application/com.android.managedprovisioning intent."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const/16 v21, 0x0

    goto :goto_0

    .line 840
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v6

    .local v6, "arr$":[Landroid/nfc/NdefRecord;
    array-length v13, v6

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v13, :cond_8

    aget-object v18, v6, v11

    .line 841
    .local v18, "record":Landroid/nfc/NdefRecord;
    invoke-virtual/range {v18 .. v18}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v21

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    invoke-virtual/range {v18 .. v18}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v21

    const-string v22, "samsung.com:facebook"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    invoke-static/range {v21 .. v22}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 843
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 844
    sget-boolean v21, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v21, :cond_5

    const-string v21, "NfcDispatcher"

    const-string v22, "found facebook record"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_5
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 847
    :cond_6
    invoke-virtual/range {v18 .. v18}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v21

    if-nez v21, :cond_7

    .line 848
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 840
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 854
    .end local v18    # "record":Landroid/nfc/NdefRecord;
    :cond_8
    invoke-static/range {p2 .. p2}, Lcom/android/nfc/NfcDispatcher;->extractAarPackages(Landroid/nfc/NdefMessage;)Ljava/util/List;

    move-result-object v4

    .line 855
    .local v4, "aarPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 856
    .local v15, "pkg":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 857
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 858
    sget-boolean v21, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v21, :cond_a

    const-string v21, "NfcDispatcher"

    const-string v22, "matched AAR to NDEF"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_a
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 862
    :cond_b
    const-string v21, "com.sec.android.directshare"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 863
    sget-boolean v21, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v21, :cond_c

    const-string v21, "NfcDispatcher"

    const-string v22, "This device don\'t support SBeam"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_c
    new-instance v20, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-class v22, Lcom/android/nfc/AndroidBeamPopUp;

    invoke-direct/range {v20 .. v22}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 865
    .local v20, "sbeamPopup":Landroid/content/Intent;
    const-string v21, "POPUP_MODE"

    const-string v22, "not_support_sbeam"

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    const/high16 v21, 0x10000000

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 868
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 874
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v20    # "sbeamPopup":Landroid/content/Intent;
    :cond_d
    invoke-static/range {p2 .. p2}, Lcom/android/nfc/NfcDispatcher;->extractSamsungPackages(Landroid/nfc/NdefMessage;)Ljava/util/List;

    move-result-object v3

    .line 875
    .local v3, "SamsungPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 876
    .local v7, "btAddr":Ljava/lang/String;
    const/16 v16, 0x0

    .line 878
    .local v16, "pkg_name":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_11

    .line 879
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "pkg_name":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 884
    .restart local v16    # "pkg_name":Ljava/lang/String;
    :cond_e
    :goto_2
    if-eqz v16, :cond_12

    .line 885
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/NfcDispatcher;->extractBtAddr(Ljava/lang/String;Landroid/nfc/NdefMessage;)Ljava/lang/String;

    move-result-object v7

    .line 886
    if-eqz v7, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Lcom/android/nfc/NfcDispatcher;->saveBtAddr(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :cond_f
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_10
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 892
    .restart local v15    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 893
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v21

    if-eqz v21, :cond_13

    .line 894
    const-string v21, "NfcDispatcher"

    const-string v22, "String matched SAR to NDEF"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 880
    .end local v15    # "pkg":Ljava/lang/String;
    :cond_11
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_e

    .line 881
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "pkg_name":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .restart local v16    # "pkg_name":Ljava/lang/String;
    goto :goto_2

    .line 888
    :cond_12
    const-string v21, "NfcDispatcher"

    const-string v22, "no matched AAR or SAR"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 897
    .restart local v15    # "pkg":Ljava/lang/String;
    :cond_13
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "stub"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 898
    const-string v21, "NfcDispatcher"

    const-string v22, "String matched SAR with stub to NDEF"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 904
    .end local v15    # "pkg":Ljava/lang/String;
    :cond_14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_18

    .line 905
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 908
    .local v10, "firstPackage":Ljava/lang/String;
    :try_start_0
    new-instance v8, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v21

    move/from16 v0, v21

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 909
    .local v8, "currentUser":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "android"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 915
    .local v17, "pm":Landroid/content/pm/PackageManager;
    const-string v21, "NfcDispatcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "firstPackage Name : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 917
    .local v5, "appLaunchIntent":Landroid/content/Intent;
    if-eqz v5, :cond_16

    .line 918
    if-eqz v7, :cond_15

    .line 919
    const-string v21, "NfcDispatcher"

    const-string v22, "appLaunchIntent.putExtra(bt_addr, btAddr);"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const-string v21, "bt_addr"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 922
    :cond_15
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 923
    const-string v21, "NfcDispatcher"

    const-string v22, "matched SamsungPackages to application launch"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 911
    .end local v5    # "appLaunchIntent":Landroid/content/Intent;
    .end local v8    # "currentUser":Landroid/os/UserHandle;
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v9

    .line 912
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v21, "NfcDispatcher"

    const-string v22, "Could not create user package context"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 928
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "appLaunchIntent":Landroid/content/Intent;
    .restart local v8    # "currentUser":Landroid/os/UserHandle;
    .restart local v17    # "pm":Landroid/content/pm/PackageManager;
    :cond_16
    invoke-static {v10}, Lcom/android/nfc/NfcDispatcher;->getSamsungAppSearchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    .line 929
    .local v19, "samsungmarketIntent":Landroid/content/Intent;
    if-eqz v19, :cond_18

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 930
    sget-boolean v21, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v21, :cond_17

    const-string v21, "NfcDispatcher"

    const-string v22, "matched SamsungApps to market launch"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_17
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 936
    .end local v5    # "appLaunchIntent":Landroid/content/Intent;
    .end local v8    # "currentUser":Landroid/os/UserHandle;
    .end local v10    # "firstPackage":Ljava/lang/String;
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .end local v19    # "samsungmarketIntent":Landroid/content/Intent;
    :cond_18
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_1d

    .line 937
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 940
    .restart local v10    # "firstPackage":Ljava/lang/String;
    :try_start_1
    new-instance v8, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v21

    move/from16 v0, v21

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 941
    .restart local v8    # "currentUser":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "android"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    .line 947
    .restart local v17    # "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 949
    .restart local v5    # "appLaunchIntent":Landroid/content/Intent;
    if-eqz v5, :cond_1b

    .line 950
    if-eqz v7, :cond_19

    .line 951
    const-string v21, "bt_addr"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 953
    :cond_19
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 955
    sget-boolean v21, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v21, :cond_1a

    const-string v21, "NfcDispatcher"

    const-string v22, "matched AAR to application launch"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_1a
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 943
    .end local v5    # "appLaunchIntent":Landroid/content/Intent;
    .end local v8    # "currentUser":Landroid/os/UserHandle;
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v9

    .line 944
    .restart local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v21, "NfcDispatcher"

    const-string v22, "Could not create user package context"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 960
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "appLaunchIntent":Landroid/content/Intent;
    .restart local v8    # "currentUser":Landroid/os/UserHandle;
    .restart local v17    # "pm":Landroid/content/pm/PackageManager;
    :cond_1b
    invoke-static {v10}, Lcom/android/nfc/NfcDispatcher;->getAppSearchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 961
    .local v14, "marketIntent":Landroid/content/Intent;
    if-eqz v14, :cond_1d

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v21

    if-eqz v21, :cond_1d

    .line 962
    sget-boolean v21, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v21, :cond_1c

    const-string v21, "NfcDispatcher"

    const-string v22, "matched AAR to market launch"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :cond_1c
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 968
    .end local v5    # "appLaunchIntent":Landroid/content/Intent;
    .end local v8    # "currentUser":Landroid/os/UserHandle;
    .end local v10    # "firstPackage":Ljava/lang/String;
    .end local v14    # "marketIntent":Landroid/content/Intent;
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    :cond_1d
    const-string v21, "CHINA"

    const-string v22, "ro.csc.country_code"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1f

    .line 969
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1f

    .line 970
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "http://play.google.com/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1f

    .line 971
    if-eqz v4, :cond_1f

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_1f

    .line 972
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 974
    .restart local v10    # "firstPackage":Ljava/lang/String;
    invoke-static {v10}, Lcom/android/nfc/NfcDispatcher;->getSamsungAppSearchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    .line 975
    .restart local v19    # "samsungmarketIntent":Landroid/content/Intent;
    if-eqz v19, :cond_1f

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v21

    if-eqz v21, :cond_1f

    .line 976
    sget-boolean v21, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v21, :cond_1e

    const-string v21, "NfcDispatcher"

    const-string v22, "CHINA : matched SamsungApps to market launch instead of Google URL"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_1e
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 986
    .end local v10    # "firstPackage":Ljava/lang/String;
    .end local v19    # "samsungmarketIntent":Landroid/content/Intent;
    :cond_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 987
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v21

    if-eqz v21, :cond_21

    .line 988
    sget-boolean v21, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v21, :cond_20

    const-string v21, "NfcDispatcher"

    const-string v22, "matched NDEF"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_20
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 992
    :cond_21
    const/16 v21, 0x0

    goto/16 :goto_0
.end method

.method tryOverrides(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)Z
    .locals 7
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/Tag;
    .param p3, "message"    # Landroid/nfc/NdefMessage;
    .param p4, "overrideIntent"    # Landroid/app/PendingIntent;
    .param p5, "overrideFilters"    # [Landroid/content/IntentFilter;
    .param p6, "overrideTechLists"    # [[Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 727
    if-nez p4, :cond_1

    .line 784
    :cond_0
    :goto_0
    return v5

    .line 733
    :cond_1
    sget-object v3, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v3}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 734
    invoke-virtual {p4}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 736
    .local v0, "creatorUserId":I
    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v3, v0}, Landroid/os/PersonaManager;->isNFCAllowed(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 737
    const-string v3, "NfcDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not allowed to dispatch to overriding user "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 747
    .end local v0    # "creatorUserId":I
    :cond_2
    if-eqz p3, :cond_5

    .line 748
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v2

    .line 749
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_5

    if-eqz p6, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {p0, v2, p5, v3}, Lcom/android/nfc/NfcDispatcher;->isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 752
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {p4, v3, v6, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 753
    sget-boolean v3, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "NfcDispatcher"

    const-string v6, "matched NDEF override"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v5, v4

    .line 754
    goto :goto_0

    :cond_4
    move v3, v5

    .line 749
    goto :goto_1

    .line 755
    :catch_0
    move-exception v1

    .line 756
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0

    .line 762
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTechIntent()Landroid/content/Intent;

    move-result-object v2

    .line 763
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, p2, p6}, Lcom/android/nfc/NfcDispatcher;->isTechMatch(Landroid/nfc/Tag;[[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 765
    :try_start_1
    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {p4, v3, v6, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 766
    sget-boolean v3, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v3, :cond_6

    const-string v3, "NfcDispatcher"

    const-string v6, "matched TECH override"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    move v5, v4

    .line 767
    goto :goto_0

    .line 768
    :catch_1
    move-exception v1

    .line 769
    .restart local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0

    .line 774
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_7
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTagIntent()Landroid/content/Intent;

    move-result-object v2

    .line 775
    if-eqz p6, :cond_9

    move v3, v4

    :goto_2
    invoke-virtual {p0, v2, p5, v3}, Lcom/android/nfc/NfcDispatcher;->isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 777
    :try_start_2
    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {p4, v3, v6, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 778
    sget-boolean v3, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v3, :cond_8

    const-string v3, "NfcDispatcher"

    const-string v6, "matched TAG override"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_8
    move v5, v4

    .line 779
    goto/16 :goto_0

    :cond_9
    move v3, v5

    .line 775
    goto :goto_2

    .line 780
    :catch_2
    move-exception v1

    .line 781
    .restart local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    goto/16 :goto_0
.end method

.method public tryPeripheralHandover(Landroid/nfc/NdefMessage;)Z
    .locals 6
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v2, 0x0

    .line 1107
    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/android/nfc/NfcDispatcher;->mDeviceSupportsBluetooth:Z

    if-nez v3, :cond_1

    .line 1123
    :cond_0
    :goto_0
    return v2

    .line 1109
    :cond_1
    sget-boolean v3, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "NfcDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tryHandover(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v3, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    .line 1112
    .local v0, "handover":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v3, :cond_0

    .line 1114
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/nfc/handover/PeripheralHandoverService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1115
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "device"

    iget-object v3, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1116
    const-string v2, "headsetname"

    iget-object v3, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1117
    const-string v2, "transporttype"

    iget v3, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->transport:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1119
    const-string v2, "cod"

    iget v3, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->cod:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1121
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1123
    const/4 v2, 0x1

    goto :goto_0
.end method

.method tryTech(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z
    .locals 12
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 1053
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTechIntent()Landroid/content/Intent;

    .line 1055
    invoke-virtual {p2}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v8

    .line 1056
    .local v8, "tagTechs":[Ljava/lang/String;
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1059
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1060
    .local v5, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v9, p0, Lcom/android/nfc/NfcDispatcher;->mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;

    invoke-virtual {v9}, Lcom/android/nfc/RegisteredComponentCache;->getComponents()Ljava/util/ArrayList;

    move-result-object v7

    .line 1064
    .local v7, "registered":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    :try_start_0
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-direct {v0, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 1065
    .local v0, "currentUser":Landroid/os/UserHandle;
    iget-object v9, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v10, "android"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1072
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    .line 1074
    .local v3, "info":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    iget-object v9, v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->techs:[Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lcom/android/nfc/NfcDispatcher;->filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {v6, v9}, Lcom/android/nfc/NfcDispatcher;->isComponentEnabled(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1077
    iget-object v9, v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1078
    iget-object v9, v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1067
    .end local v0    # "currentUser":Landroid/os/UserHandle;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 1068
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "NfcDispatcher"

    const-string v10, "Could not create user package context"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    const/4 v9, 0x0

    .line 1103
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    return v9

    .line 1083
    .restart local v0    # "currentUser":Landroid/os/UserHandle;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 1085
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1086
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1087
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1088
    sget-boolean v9, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v9, :cond_2

    const-string v9, "NfcDispatcher"

    const-string v10, "matched single TECH"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_2
    const/4 v9, 0x1

    goto :goto_1

    .line 1091
    :cond_3
    iget-object v9, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1103
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 1092
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_4

    .line 1094
    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-class v10, Lcom/android/nfc/TechListChooserActivity;

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1095
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "android.intent.extra.INTENT"

    iget-object v10, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1096
    const-string v9, "rlist"

    invoke-virtual {v4, v9, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1098
    invoke-virtual {p1, v4}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1099
    sget-boolean v9, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v9, :cond_6

    const-string v9, "NfcDispatcher"

    const-string v10, "matched multiple TECH"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_6
    const/4 v9, 0x1

    goto :goto_1
.end method
