.class public Lcom/samsung/android/share/SShareSimpleSharing;
.super Ljava/lang/Object;
.source "SShareSimpleSharing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;,
        Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;,
        Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;
    }
.end annotation


# static fields
.field public static final ACTION_REQ_AUTH:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

.field private static final DEBUG:Z = false

.field private static final DEV_TYPE_MOBILE:I = 0x1

.field private static final DEV_TYPE_TABLET:I = 0x2

.field public static final INTENT_ACTION_REQUESTSEND:Ljava/lang/String; = "com.samsung.android.coreapps.rshare.action.REQUESTSEND"

.field private static final INTENT_REQUEST_RECENT_GROUP:Ljava/lang/String; = "com.samsung.android.coreapps.rshare.requestrecentgroupcontacts"

.field private static final MAX_FONT_SCALE:F = 1.2f

.field private static final MSG_INIT_RECENTLIST:I = 0x7d0

.field private static final MSG_LIST_UPDATE:I = 0x3e8

.field private static final QUICKCONNECT_PERMISSION:Ljava/lang/String; = "com.samsung.android.sconnect.permission.REQUEST_DISCOVERY_SERIVCE"

.field private static RECENT_CONTACTS_LIST_MAX_COUNT:I = 0x0

.field private static final RECENT_TYPE_CONTACT_GROUP:I = 0x2

.field private static final RECENT_TYPE_CONTACT_PHOTO:I = 0x3

.field private static final RECENT_TYPE_CONTACT_PRIV:I = 0x1

.field private static final RECENT_TYPE_DEFAULT:I = 0x0

.field private static final RECENT_TYPE_DEVICE_MOBILE:I = 0x4

.field private static final RECENT_TYPE_DEVICE_TABLET:I = 0x5

.field private static final REQUEST_CODE_REQUEST_RECENT_CONTACTS:I = 0x1

.field public static final REQUEST_CODE_SIGNUP_REQ_AUTH:I = 0x1

.field public static final SSHARING_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.coreapps.rshare.ui.RelayActivity"

.field public static final SSHARING_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.coreapps"

.field private static final TAG:Ljava/lang/String; = "SShareSimpleSharing"

.field public static final TAG_RECIPIENT_DATAIDS:Ljava/lang/String; = "recipientdataids"

.field private static final WIFIDIRECT_ACTIVITY_NAME:Ljava/lang/String; = "com.sec.android.app.FileShareClient.DeviceSelectActivity"

.field private static mEasySignUpCertificated:Z

.field private static mIsRemoteShareServiceDownloaded:Z

.field private static mRemoteShareServiceEnabled:Z

.field private static mSSharingRecentContactExisted:Z


# instance fields
.field private final ELLIPSIS_NORMAL:[C

.field private final EXTRA_KEY_RECENT_GROUP_CONTACTID:Ljava/lang/String;

.field private final EXTRA_KEY_RECENT_GROUP_COUNT:Ljava/lang/String;

.field private final EXTRA_KEY_RECENT_GROUP_DATAIDS:Ljava/lang/String;

.field private final EXTRA_KEY_RECENT_GROUP_NAMES:Ljava/lang/String;

.field private final EXTRA_KEY_RECENT_GROUP_NAME_LIST:Ljava/lang/String;

.field private final EXTRA_KEY_RECENT_GROUP_PHONENUM:Ljava/lang/String;

.field private final EXTRA_KEY_RECENT_GROUP_THUMBNAILS:Ljava/lang/String;

.field private final REMOTE_SHARE_SERVICE_ID:I

.field private final RESPONSE_RECENT_GROUP_CONTACTS:Ljava/lang/String;

.field private defaultTextSize:F

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mExtraIntentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mFeature:Lcom/samsung/android/share/SShareCommon;

.field private mGridRecentHistory:Landroid/widget/HorizontalListView;

.field private mGroupNameOldConcept:Z

.field final mHandler:Landroid/os/Handler;

.field private mIsRecentContactsReceiverRegistered:Z

.field private mIsRemoteShareServiceDownloadedChecked:Z

.field private mListupCompleted:Z

.field private mOrigIntent:Landroid/content/Intent;

.field private mRecentContactsId:[J

.field private mRecentContactsItemContactsCountInGroup:[I

.field private mRecentContactsListCount:I

.field private mRecentContactsListName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentContactsListThumb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

.field private mRecentHistoryIndex:I

.field mRecentHistoryIntent:Landroid/content/Intent;

.field private mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

.field private mRecipientDataId:[Ljava/lang/String;

.field private mTunedMargin:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/share/SShareSimpleSharing;->mEasySignUpCertificated:Z

    sput-boolean v1, Lcom/samsung/android/share/SShareSimpleSharing;->mSSharingRecentContactExisted:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRemoteShareServiceEnabled:Z

    sput-boolean v1, Lcom/samsung/android/share/SShareSimpleSharing;->mIsRemoteShareServiceDownloaded:Z

    const/4 v0, 0x5

    sput v0, Lcom/samsung/android/share/SShareSimpleSharing;->RECENT_CONTACTS_LIST_MAX_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/share/SShareCommon;Landroid/content/Intent;ILjava/util/List;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "feature"    # Lcom/samsung/android/share/SShareCommon;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "launchedFromUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            "Lcom/samsung/android/share/SShareCommon;",
            "Landroid/content/Intent;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "extraIntentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    iput-boolean v2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mIsRecentContactsReceiverRegistered:Z

    iput v2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListName:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListThumb:Ljava/util/List;

    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mTunedMargin:F

    iput-boolean v2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mIsRemoteShareServiceDownloadedChecked:Z

    const-string v0, "com.samsung.android.coreapps.rshare.responserecentgroupcontacts"

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->RESPONSE_RECENT_GROUP_CONTACTS:Ljava/lang/String;

    const-string v0, "recentgroupnamelist"

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->EXTRA_KEY_RECENT_GROUP_NAME_LIST:Ljava/lang/String;

    const-string v0, "recentgroupnames"

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->EXTRA_KEY_RECENT_GROUP_NAMES:Ljava/lang/String;

    const-string v0, "recentgroupthumbnail"

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->EXTRA_KEY_RECENT_GROUP_THUMBNAILS:Ljava/lang/String;

    const-string v0, "recentgroupdataids"

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->EXTRA_KEY_RECENT_GROUP_DATAIDS:Ljava/lang/String;

    const-string v0, "recentgroupcontactids"

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->EXTRA_KEY_RECENT_GROUP_CONTACTID:Ljava/lang/String;

    const-string v0, "recentgroupcount"

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->EXTRA_KEY_RECENT_GROUP_COUNT:Ljava/lang/String;

    const-string v0, "recentphonenumbers"

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->EXTRA_KEY_RECENT_GROUP_PHONENUM:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0x2026

    aput-char v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->ELLIPSIS_NORMAL:[C

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->REMOTE_SHARE_SERVICE_ID:I

    iput-boolean v2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mListupCompleted:Z

    new-instance v0, Lcom/samsung/android/share/SShareSimpleSharing$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/share/SShareSimpleSharing$1;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;)V

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/share/SShareSimpleSharing$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/share/SShareSimpleSharing$2;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;)V

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mFeature:Lcom/samsung/android/share/SShareCommon;

    iput-object p4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mOrigIntent:Landroid/content/Intent;

    new-instance v0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    sget v0, Lcom/samsung/android/share/SShareSimpleSharing;->RECENT_CONTACTS_LIST_MAX_COUNT:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecipientDataId:[Ljava/lang/String;

    sget v0, Lcom/samsung/android/share/SShareSimpleSharing;->RECENT_CONTACTS_LIST_MAX_COUNT:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsId:[J

    sget v0, Lcom/samsung/android/share/SShareSimpleSharing;->RECENT_CONTACTS_LIST_MAX_COUNT:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I

    iput-object p6, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->checkEasySignUpCertificated()V

    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->checkSSharingRecentContactExisted()V

    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->checkRemoteShareServiceEnabled()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/share/SShareSimpleSharing;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->initRecentHistoryList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/share/SShareSimpleSharing;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->getFontScale()F

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/share/SShareSimpleSharing;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I

    return p1
.end method

.method static synthetic access$108(Lcom/samsung/android/share/SShareSimpleSharing;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    iget v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/share/SShareSimpleSharing;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    iget v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->defaultTextSize:F

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/share/SShareSimpleSharing;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->defaultTextSize:F

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/share/SShareSimpleSharing;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListThumb:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListName:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    sget v0, Lcom/samsung/android/share/SShareSimpleSharing;->RECENT_CONTACTS_LIST_MAX_COUNT:I

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/share/SShareSimpleSharing;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mGroupNameOldConcept:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/share/SShareSimpleSharing;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecipientDataId:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/share/SShareSimpleSharing;)[J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsId:[J

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/share/SShareSimpleSharing;)[I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I

    return-object v0
.end method

.method private checkEasySignUpCertificated()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->isJoined(Landroid/content/Context;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mEasySignUpCertificated:Z

    const-string v0, "SShareSimpleSharing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isJoined="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/share/SShareSimpleSharing;->mEasySignUpCertificated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkRemoteShareServiceEnabled()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-boolean v1, Lcom/samsung/android/share/SShareSimpleSharing;->mEasySignUpCertificated:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->getServiceStatus(Landroid/content/Context;I)I

    move-result v0

    .local v0, "retVal":I
    const-string v1, "SShareSimpleSharing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v4, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/share/SShareSimpleSharing;->mRemoteShareServiceEnabled:Z

    .end local v0    # "retVal":I
    :goto_0
    return-void

    .restart local v0    # "retVal":I
    :cond_0
    sput-boolean v4, Lcom/samsung/android/share/SShareSimpleSharing;->mRemoteShareServiceEnabled:Z

    goto :goto_0

    .end local v0    # "retVal":I
    :cond_1
    sput-boolean v4, Lcom/samsung/android/share/SShareSimpleSharing;->mRemoteShareServiceEnabled:Z

    goto :goto_0
.end method

.method private checkSSharingRecentContactExisted()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/coreapps/sdk/easysignup/SimpleSharingManager;->isRecentContactExisted(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mSSharingRecentContactExisted:Z

    const-string v0, "SShareSimpleSharing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecentContactExisted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/share/SShareSimpleSharing;->mSSharingRecentContactExisted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private clearRecentHistoryList(Z)V
    .locals 1
    .param p1, "bClearAll"    # Z

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;
    invoke-static {v0}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->access$900(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;
    invoke-static {v0}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->access$900(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mListupCompleted:Z

    :cond_0
    return-void
.end method

.method private getFontScale()F
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .local v0, "fontScale":F
    const v1, 0x3f99999a    # 1.2f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const v0, 0x3f99999a    # 1.2f

    :cond_0
    return v0
.end method

.method private getRecentHistoryInfo(I)Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    return-object v0
.end method

.method private getRecentIconType([BIJI)I
    .locals 3
    .param p1, "contactThumbArray"    # [B
    .param p2, "contactCount"    # I
    .param p3, "contactId"    # J
    .param p5, "devType"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    if-eq p5, v1, :cond_2

    if-ne p5, v2, :cond_0

    const/4 v0, 0x4

    .local v0, "iconType":I
    :goto_0
    return v0

    .end local v0    # "iconType":I
    :cond_0
    const/4 v1, 0x2

    if-ne p5, v1, :cond_1

    const/4 v0, 0x5

    .restart local v0    # "iconType":I
    goto :goto_0

    .end local v0    # "iconType":I
    :cond_1
    const/4 v0, 0x4

    .restart local v0    # "iconType":I
    goto :goto_0

    .end local v0    # "iconType":I
    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x3

    .restart local v0    # "iconType":I
    goto :goto_0

    .end local v0    # "iconType":I
    :cond_3
    if-le p2, v2, :cond_4

    const/4 v0, 0x2

    .restart local v0    # "iconType":I
    goto :goto_0

    .end local v0    # "iconType":I
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "iconType":I
    goto :goto_0
.end method

.method private initRecentHistoryDefault()V
    .locals 6

    .prologue
    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10408c6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10408c7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .local v5, "recentHistoryDefaultIconDisplayLabel":Ljava/lang/CharSequence;
    new-instance v0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .local v0, "remoteShareItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;
    invoke-static {v1}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->access$900(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private initRecentHistoryList()V
    .locals 48

    .prologue
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mGridRecentHistory:Landroid/widget/HorizontalListView;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->access$900(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/android/share/SShareSimpleSharing;->clearRecentHistoryList(Z)V

    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I

    const/4 v6, 0x1

    if-lt v5, v6, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050208

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v0, v5

    move/from16 v42, v0

    .local v42, "textWidth":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050209

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v0, v5

    move/from16 v39, v0

    .local v39, "textLandWidth":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0105

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v0, v5

    move/from16 v25, v0

    .local v25, "maxLineNum":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    const/4 v14, 0x1

    .local v14, "bLandscape":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10408c7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v35

    .local v35, "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    new-instance v36, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;Ljava/lang/CharSequence;)V

    .local v36, "remoteShareItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->access$900(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    move-object/from16 v0, v36

    invoke-interface {v5, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/share/SShareSimpleSharing;->getFontScale()F

    move-result v21

    .local v21, "fontScale":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050278

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v0, v5

    move/from16 v16, v0

    .local v16, "defaultSize":F
    const/4 v5, 0x0

    mul-float v6, v16, v21

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v5, v6, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v41

    .local v41, "textSize":F
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mGroupNameOldConcept:Z

    if-eqz v5, :cond_3

    :cond_3
    const/16 v38, 0x0

    .local v38, "tempContactsIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I

    move/from16 v0, v38

    if-ge v0, v5, :cond_19

    sget v5, Lcom/samsung/android/share/SShareSimpleSharing;->RECENT_CONTACTS_LIST_MAX_COUNT:I

    move/from16 v0, v38

    if-ge v0, v5, :cond_19

    const/16 v33, 0x0

    .local v33, "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    const/16 v34, 0x0

    .local v34, "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    const-string v23, ""

    .local v23, "groupNameOrg":Ljava/lang/String;
    const-string v22, ""

    .local v22, "groupName":Ljava/lang/String;
    const/16 v32, 0x0

    .local v32, "photoIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I

    aget v5, v5, v38

    const/4 v6, 0x1

    if-le v5, v6, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListName:Ljava/util/ArrayList;

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/CharSequence;

    .local v27, "nameStr":Ljava/lang/CharSequence;
    const-string v19, ""

    .local v19, "emptyStr":Ljava/lang/CharSequence;
    const-string v18, ""

    .local v18, "emptyGroupStr":Ljava/lang/String;
    const/16 v45, 0x0

    .local v45, "totalW":F
    const/16 v29, 0x0

    .local v29, "needEllipsis":Z
    new-instance v40, Landroid/text/TextPaint;

    invoke-direct/range {v40 .. v40}, Landroid/text/TextPaint;-><init>()V

    .local v40, "textPaint":Landroid/text/TextPaint;
    invoke-virtual/range {v40 .. v41}, Landroid/text/TextPaint;->setTextSize(F)V

    const-string v5, "sec-roboto-light"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v5, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, v40

    iput v5, v0, Landroid/text/TextPaint;->density:F

    if-eqz v14, :cond_6

    mul-float v5, v39, v25

    sub-float v13, v5, v45

    .local v13, "availNameW":F
    :goto_3
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    invoke-static {v0, v1, v13, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v17

    .local v17, "ellipsizedNameStr":Ljava/lang/CharSequence;
    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/share/SShareSimpleSharing;->ELLIPSIS_NORMAL:[C

    const/4 v10, 0x0

    aget-char v9, v9, v10

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v29, 0x1

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mGroupNameOldConcept:Z

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    const v6, 0x10408c8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v19, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I

    aget v9, v9, v38

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    move-object/from16 v0, v23

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    :goto_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v30

    .local v30, "othersLength":I
    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v31, v0

    .local v31, "othersW":[F
    move-object/from16 v0, v40

    move-object/from16 v1, v18

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    move-result v11

    .local v11, "arrayNum":I
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_5
    move/from16 v0, v24

    if-ge v0, v11, :cond_9

    aget v5, v31, v24

    add-float v45, v45, v5

    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .end local v11    # "arrayNum":I
    .end local v13    # "availNameW":F
    .end local v14    # "bLandscape":Z
    .end local v16    # "defaultSize":F
    .end local v17    # "ellipsizedNameStr":Ljava/lang/CharSequence;
    .end local v18    # "emptyGroupStr":Ljava/lang/String;
    .end local v19    # "emptyStr":Ljava/lang/CharSequence;
    .end local v21    # "fontScale":F
    .end local v22    # "groupName":Ljava/lang/String;
    .end local v23    # "groupNameOrg":Ljava/lang/String;
    .end local v24    # "i":I
    .end local v27    # "nameStr":Ljava/lang/CharSequence;
    .end local v29    # "needEllipsis":Z
    .end local v30    # "othersLength":I
    .end local v31    # "othersW":[F
    .end local v32    # "photoIcon":Landroid/graphics/drawable/Drawable;
    .end local v33    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    .end local v34    # "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    .end local v35    # "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    .end local v36    # "remoteShareItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .end local v38    # "tempContactsIndex":I
    .end local v40    # "textPaint":Landroid/text/TextPaint;
    .end local v41    # "textSize":F
    .end local v45    # "totalW":F
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_1

    .restart local v14    # "bLandscape":Z
    .restart local v16    # "defaultSize":F
    .restart local v18    # "emptyGroupStr":Ljava/lang/String;
    .restart local v19    # "emptyStr":Ljava/lang/CharSequence;
    .restart local v21    # "fontScale":F
    .restart local v22    # "groupName":Ljava/lang/String;
    .restart local v23    # "groupNameOrg":Ljava/lang/String;
    .restart local v27    # "nameStr":Ljava/lang/CharSequence;
    .restart local v29    # "needEllipsis":Z
    .restart local v32    # "photoIcon":Landroid/graphics/drawable/Drawable;
    .restart local v33    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    .restart local v34    # "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    .restart local v35    # "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    .restart local v36    # "remoteShareItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .restart local v38    # "tempContactsIndex":I
    .restart local v40    # "textPaint":Landroid/text/TextPaint;
    .restart local v41    # "textSize":F
    .restart local v45    # "totalW":F
    :cond_6
    mul-float v5, v42, v25

    sub-float v5, v5, v45

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mTunedMargin:F

    sub-float v13, v5, v6

    .restart local v13    # "availNameW":F
    goto/16 :goto_3

    .restart local v17    # "ellipsizedNameStr":Ljava/lang/CharSequence;
    :cond_7
    if-eqz v29, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I

    aget v6, v6, v38

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    :cond_8
    move-object/from16 v18, v23

    goto :goto_4

    .restart local v11    # "arrayNum":I
    .restart local v24    # "i":I
    .restart local v30    # "othersLength":I
    .restart local v31    # "othersW":[F
    :cond_9
    if-eqz v14, :cond_c

    mul-float v5, v39, v25

    sub-float v13, v5, v45

    :goto_6
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    invoke-static {v0, v1, v13, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v17

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mGroupNameOldConcept:Z

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/share/SShareSimpleSharing;->ELLIPSIS_NORMAL:[C

    const/4 v9, 0x0

    aget-char v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v6, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/share/SShareSimpleSharing;->ELLIPSIS_NORMAL:[C

    const/4 v9, 0x0

    aget-char v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .end local v11    # "arrayNum":I
    .end local v13    # "availNameW":F
    .end local v17    # "ellipsizedNameStr":Ljava/lang/CharSequence;
    .end local v18    # "emptyGroupStr":Ljava/lang/String;
    .end local v19    # "emptyStr":Ljava/lang/CharSequence;
    .end local v24    # "i":I
    .end local v27    # "nameStr":Ljava/lang/CharSequence;
    .end local v29    # "needEllipsis":Z
    .end local v30    # "othersLength":I
    .end local v31    # "othersW":[F
    .end local v40    # "textPaint":Landroid/text/TextPaint;
    .end local v45    # "totalW":F
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListThumb:Ljava/util/List;

    move/from16 v0, v38

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I

    aget v7, v5, v38

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsId:[J

    aget-wide v8, v5, v38

    const/4 v10, -0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/share/SShareSimpleSharing;->getRecentIconType([BIJI)I

    move-result v7

    .local v7, "iconType":I
    const/4 v5, 0x3

    if-ne v7, v5, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListThumb:Ljava/util/List;

    move/from16 v0, v38

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/android/share/SShareSimpleSharing;->makeContactPhotoImage([B)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .end local v32    # "photoIcon":Landroid/graphics/drawable/Drawable;
    .local v8, "photoIcon":Landroid/graphics/drawable/Drawable;
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I

    aget v5, v5, v38

    const/4 v6, 0x1

    if-le v5, v6, :cond_17

    new-instance v4, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    move-object/from16 v5, p0

    move-object/from16 v6, v33

    move-object/from16 v9, v34

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .local v4, "recentHistoryItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->access$900(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    invoke-interface {v5, v6, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_2

    .end local v4    # "recentHistoryItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .end local v7    # "iconType":I
    .end local v8    # "photoIcon":Landroid/graphics/drawable/Drawable;
    .restart local v11    # "arrayNum":I
    .restart local v13    # "availNameW":F
    .restart local v17    # "ellipsizedNameStr":Ljava/lang/CharSequence;
    .restart local v18    # "emptyGroupStr":Ljava/lang/String;
    .restart local v19    # "emptyStr":Ljava/lang/CharSequence;
    .restart local v24    # "i":I
    .restart local v27    # "nameStr":Ljava/lang/CharSequence;
    .restart local v29    # "needEllipsis":Z
    .restart local v30    # "othersLength":I
    .restart local v31    # "othersW":[F
    .restart local v32    # "photoIcon":Landroid/graphics/drawable/Drawable;
    .restart local v40    # "textPaint":Landroid/text/TextPaint;
    .restart local v45    # "totalW":F
    :cond_c
    if-eqz v29, :cond_d

    mul-float v5, v42, v25

    sub-float v5, v5, v45

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mTunedMargin:F

    sub-float v13, v5, v6

    goto/16 :goto_6

    :cond_d
    mul-float v5, v42, v25

    sub-float v13, v5, v45

    goto/16 :goto_6

    :cond_e
    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v26

    .local v26, "nameLength":I
    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v28, v0

    .local v28, "nameW":[F
    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    move-result v12

    .local v12, "arrayNum1":I
    const/16 v46, 0x0

    .local v46, "totalW1":F
    const/16 v47, 0x0

    .local v47, "totalW2":F
    const/16 v20, 0x0

    .local v20, "firstLineCount":I
    const-string v43, ""

    .local v43, "tmpStr":Ljava/lang/String;
    const-string v44, ""

    .local v44, "tmpStr2":Ljava/lang/String;
    const/16 v24, 0x0

    :goto_a
    move/from16 v0, v24

    if-ge v0, v12, :cond_f

    aget v5, v28, v24

    add-float v46, v46, v5

    cmpl-float v5, v46, v42

    if-ltz v5, :cond_11

    move/from16 v20, v24

    :cond_f
    move-object/from16 v33, v43

    if-lez v20, :cond_b

    if-eqz v29, :cond_12

    sub-float v5, v42, v45

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mTunedMargin:F

    sub-float v37, v5, v6

    .local v37, "secondLineWidth":F
    :goto_b
    move/from16 v24, v20

    :goto_c
    move/from16 v0, v24

    if-ge v0, v12, :cond_10

    aget v5, v28, v24

    add-float v47, v47, v5

    cmpl-float v5, v47, v37

    if-ltz v5, :cond_13

    :cond_10
    if-eqz v29, :cond_14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/share/SShareSimpleSharing;->ELLIPSIS_NORMAL:[C

    const/4 v9, 0x0

    aget-char v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    :goto_d
    move-object/from16 v34, v44

    goto/16 :goto_7

    .end local v37    # "secondLineWidth":F
    :cond_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    add-int/lit8 v24, v24, 0x1

    goto :goto_a

    :cond_12
    sub-float v37, v42, v45

    .restart local v37    # "secondLineWidth":F
    goto :goto_b

    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    add-int/lit8 v24, v24, 0x1

    goto :goto_c

    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    goto :goto_d

    .end local v11    # "arrayNum":I
    .end local v12    # "arrayNum1":I
    .end local v13    # "availNameW":F
    .end local v17    # "ellipsizedNameStr":Ljava/lang/CharSequence;
    .end local v18    # "emptyGroupStr":Ljava/lang/String;
    .end local v19    # "emptyStr":Ljava/lang/CharSequence;
    .end local v20    # "firstLineCount":I
    .end local v24    # "i":I
    .end local v26    # "nameLength":I
    .end local v27    # "nameStr":Ljava/lang/CharSequence;
    .end local v28    # "nameW":[F
    .end local v29    # "needEllipsis":Z
    .end local v30    # "othersLength":I
    .end local v31    # "othersW":[F
    .end local v37    # "secondLineWidth":F
    .end local v40    # "textPaint":Landroid/text/TextPaint;
    .end local v43    # "tmpStr":Ljava/lang/String;
    .end local v44    # "tmpStr2":Ljava/lang/String;
    .end local v45    # "totalW":F
    .end local v46    # "totalW1":F
    .end local v47    # "totalW2":F
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListName:Ljava/util/ArrayList;

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    .end local v33    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    check-cast v33, Ljava/lang/CharSequence;

    .restart local v33    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    goto/16 :goto_7

    .restart local v7    # "iconType":I
    :cond_16
    const/4 v5, 0x2

    if-eq v7, v5, :cond_1a

    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    .local v15, "c":C
    invoke-static {v15}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v5

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/samsung/android/share/SShareSimpleSharing;->makeBitmapWithText(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .end local v32    # "photoIcon":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "photoIcon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_8

    .end local v15    # "c":C
    :cond_17
    new-instance v4, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, v33

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .restart local v4    # "recentHistoryItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    goto/16 :goto_9

    .end local v4    # "recentHistoryItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .end local v7    # "iconType":I
    .end local v8    # "photoIcon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "bLandscape":Z
    .end local v16    # "defaultSize":F
    .end local v21    # "fontScale":F
    .end local v22    # "groupName":Ljava/lang/String;
    .end local v23    # "groupNameOrg":Ljava/lang/String;
    .end local v25    # "maxLineNum":F
    .end local v33    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    .end local v34    # "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    .end local v35    # "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    .end local v36    # "remoteShareItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .end local v38    # "tempContactsIndex":I
    .end local v39    # "textLandWidth":F
    .end local v41    # "textSize":F
    .end local v42    # "textWidth":F
    :cond_18
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I

    if-nez v5, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10408c7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    .restart local v33    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    new-instance v4, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v4, v0, v1}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;Ljava/lang/CharSequence;)V

    .restart local v4    # "recentHistoryItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->access$900(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    invoke-interface {v5, v6, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    .end local v4    # "recentHistoryItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .end local v33    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->notifyDataSetChanged()V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mListupCompleted:Z

    goto/16 :goto_0

    .restart local v7    # "iconType":I
    .restart local v14    # "bLandscape":Z
    .restart local v16    # "defaultSize":F
    .restart local v21    # "fontScale":F
    .restart local v22    # "groupName":Ljava/lang/String;
    .restart local v23    # "groupNameOrg":Ljava/lang/String;
    .restart local v25    # "maxLineNum":F
    .restart local v32    # "photoIcon":Landroid/graphics/drawable/Drawable;
    .restart local v33    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    .restart local v34    # "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    .restart local v35    # "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    .restart local v36    # "remoteShareItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .restart local v38    # "tempContactsIndex":I
    .restart local v39    # "textLandWidth":F
    .restart local v41    # "textSize":F
    .restart local v42    # "textWidth":F
    :cond_1a
    move-object/from16 v8, v32

    .end local v32    # "photoIcon":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "photoIcon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_8
.end method

.method private makeBitmapWithText(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    .local v3, "drawableIcon":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050204

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .local v4, "iconSize":I
    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050205

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v7, v8

    .local v7, "textSize":F
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .local v5, "textBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .local v2, "circlePaint":Landroid/graphics/Paint;
    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1060122

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    div-int/lit8 v8, v4, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v4, 0x2

    int-to-float v10, v10

    invoke-virtual {v1, v8, v9, v10, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .local v6, "textPaint":Landroid/graphics/Paint;
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1060123

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, "bounds":Landroid/graphics/Rect;
    const/4 v8, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, p2, v8, v9, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    div-int/lit8 v8, v4, 0x2

    int-to-float v8, v8

    mul-int/lit8 v9, v4, 0x3

    div-int/lit8 v9, v9, 0x4

    int-to-float v9, v9

    invoke-virtual {v1, p2, v8, v9, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v3, v8, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v3    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    return-object v3
.end method

.method private makeContactPhotoImage([B)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "contactsThumbnailByteArray"    # [B

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x0

    if-nez p1, :cond_0

    move-object v2, v7

    :goto_0
    return-object v2

    :cond_0
    const/4 v3, 0x0

    .local v3, "mask":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .local v6, "photo":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .local v4, "orgThumb":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .local v2, "drawableIcon":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10804b7

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v8, 0x0

    array-length v9, p1

    invoke-static {p1, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x1

    invoke-static {v4, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v6, v11, v11, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1, v3, v11, v11, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v2, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v2    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method


# virtual methods
.method public buildUpSimpleSharingData()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->shouldShowRecentHistoryView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->sendRequestRecentContactsHistoryList()V

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->initRecentHistoryDefault()V

    goto :goto_0
.end method

.method public getRecentHistoryIntent(I)Landroid/content/Intent;
    .locals 8
    .param p1, "position"    # I

    .prologue
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .local v3, "targetIntent":Landroid/content/Intent;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.coreapps.rshare.action.REQUESTSEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIntent:Landroid/content/Intent;

    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.INTENT"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "nSize":I
    new-array v1, v2, [Landroid/content/Intent;

    .local v1, "initialIntents":[Landroid/content/Intent;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .end local v0    # "i":I
    .end local v1    # "initialIntents":[Landroid/content/Intent;
    .end local v2    # "nSize":I
    :cond_1
    if-lez p1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIntent:Landroid/content/Intent;

    const-string v5, "recipientdataids"

    iget-object v6, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecipientDataId:[Ljava/lang/String;

    add-int/lit8 v7, p1, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIntent:Landroid/content/Intent;

    return-object v4
.end method

.method public getRecentHistoryListAdapter()Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    return-object v0
.end method

.method public hasExtraIntentUriInfo()Z
    .locals 4

    .prologue
    iget-object v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    const/4 v2, 0x0

    .local v2, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    .local v0, "extraBundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2    # "uri":Landroid/net/Uri;
    check-cast v2, Landroid/net/Uri;

    .restart local v2    # "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .end local v0    # "extraBundle":Landroid/os/Bundle;
    .end local v1    # "i":I
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_1
    return v3

    .restart local v0    # "extraBundle":Landroid/os/Bundle;
    .restart local v1    # "i":I
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "extraBundle":Landroid/os/Bundle;
    .end local v1    # "i":I
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isEasySignUpCertificated()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mEasySignUpCertificated:Z

    return v0
.end method

.method public isRemoteShareServiceEnabled()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRemoteShareServiceEnabled:Z

    return v0
.end method

.method public recentHistoryDefaultGridItemClick(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "fromOOBE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "agreeMarketing"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "AuthRequestFrom"

    const-string v3, "shareVia"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SShareSimpleSharing"

    const-string v3, "Easy signUp agent is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public recentHistoryGridItemClick(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->getRecentHistoryListAdapter()Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v4}, Lcom/samsung/android/share/SShareCommon;->getSupportLogging()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    new-instance v3, Lcom/samsung/android/share/SShareLogging;

    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mOrigIntent:Landroid/content/Intent;

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/share/SShareLogging;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .local v3, "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareSimpleSharing;->getRecentHistoryInfo(I)Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    move-result-object v4

    iget v2, v4, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->iconType:I

    .local v2, "iconType":I
    packed-switch v2, :pswitch_data_0

    const-string v0, "personal"

    .local v0, "detailInfo":Ljava/lang/String;
    :goto_1
    const-string v4, "EASY"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "detailInfo":Ljava/lang/String;
    .end local v2    # "iconType":I
    .end local v3    # "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/share/SShareSimpleSharing;->getRecentHistoryIntent(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v4, "SShareSimpleSharing"

    const-string v5, "RecentHistoryGridItemClick : startActivity failed!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "ex":Landroid/content/ActivityNotFoundException;
    .restart local v2    # "iconType":I
    .restart local v3    # "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    :pswitch_0
    const-string v0, "group"

    .restart local v0    # "detailInfo":Ljava/lang/String;
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public registerRecentContactsReceiver()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->checkEasySignUpCertificated()V

    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->checkSSharingRecentContactExisted()V

    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->checkRemoteShareServiceEnabled()V

    invoke-virtual {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->shouldShowRecentHistoryView()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/share/SShareSimpleSharing;->mRemoteShareServiceEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mIsRecentContactsReceiverRegistered:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.coreapps.rshare.responserecentgroupcontacts"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mIsRecentContactsReceiverRegistered:Z

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public sendRequestRecentContactsHistoryList()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->registerRecentContactsReceiver()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.rshare.requestrecentgroupcontacts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setSimpleSharingView(Landroid/widget/HorizontalListView;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/HorizontalListView;
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mGridRecentHistory:Landroid/widget/HorizontalListView;

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mGridRecentHistory:Landroid/widget/HorizontalListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mGridRecentHistory:Landroid/widget/HorizontalListView;

    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mGridRecentHistory:Landroid/widget/HorizontalListView;

    invoke-virtual {v0, p2}, Landroid/widget/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method public shouldShowRecentHistoryView()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mEasySignUpCertificated:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mSSharingRecentContactExisted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterRecentContactsReceiver()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mIsRecentContactsReceiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mIsRecentContactsReceiverRegistered:Z

    :cond_0
    return-void
.end method
