.class public Lcom/sec/smartcard/pinservice/SmartCardPinManager;
.super Ljava/lang/Object;
.source "SmartCardPinManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;
    }
.end annotation


# static fields
.field private static final BIND_PIN_SERVICE:Ljava/lang/String; = "com.sec.smartcard.pinservice.action.BIND_SMART_CARD_PIN_SERVICE"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field public static final LOCKSCREEN_TYPE_OTHER:Ljava/lang/String; = "Other"

.field public static final LOCKSCREEN_TYPE_SMARTCARD:Ljava/lang/String; = "Smartcard"

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.sec.smartcard.manager/smartcards"

.field private static final SAMSUNG_SC_PKG_PREFIX:Ljava/lang/String; = "com.sec.enterprise.mdm.sc."

.field private static final SMARTCARD_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SmartCardPinManager"

.field private static final URL:Ljava/lang/String; = "content://com.sec.smartcard.manager/smartcards"

.field public static final VERIFY_PIN_CARDASSOCIATEERROR:I = 0x8

.field public static final VERIFY_PIN_CARDDISCONNECT:I = 0x6

.field public static final VERIFY_PIN_CARDERROR:I = 0x5

.field public static final VERIFY_PIN_CARDEXPIRED:I = 0x3

.field public static final VERIFY_PIN_CARDLOCKED:I = 0x2

.field public static final VERIFY_PIN_CONNECTIONERROR:I = 0x4

.field public static final VERIFY_PIN_FAIL:I = 0x1

.field public static final VERIFY_PIN_SUCCESS:I = 0x0

.field public static final VERIFY_PIN_USERCANCEL:I = 0x7

.field private static queue:Ljava/util/concurrent/BlockingQueue;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsCallbackCalled:Z

.field private mPin:[C

.field private mServiceConnectionProgress:Z

.field private mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

.field private pinServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v0, "content://com.sec.smartcard.manager/smartcards"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CardCUID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->SMARTCARD_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentUser"    # Landroid/os/UserHandle;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    new-instance v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;

    invoke-direct {v0, p0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;-><init>(Lcom/sec/smartcard/pinservice/SmartCardPinManager;)V

    iput-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    const-string v0, "SmartCardPinManager"

    const-string v1, "SmartCardPinManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    sput-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0, p2}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->bindSmartCardPinService(Landroid/os/UserHandle;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "smartCardPin"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    new-instance v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;

    invoke-direct {v0, p0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;-><init>(Lcom/sec/smartcard/pinservice/SmartCardPinManager;)V

    iput-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p1}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    return-void
.end method

.method public constructor <init>(Landroid/os/UserHandle;Landroid/content/Context;I)V
    .locals 3
    .param p1, "currentUser"    # Landroid/os/UserHandle;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "flag"    # I

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    new-instance v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;

    invoke-direct {v0, p0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;-><init>(Lcom/sec/smartcard/pinservice/SmartCardPinManager;)V

    iput-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    const-string v0, "SmartCardPinManager"

    const-string v1, "SmartCardPinManager Sync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-nez p3, :cond_0

    sput-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0, p1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->bindSmartCardPinService(Landroid/os/UserHandle;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Lcom/sec/smartcard/pinservice/ISmartCardPinService;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;
    .locals 0
    .param p0, "x0"    # Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .param p1, "x1"    # Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    .prologue
    iput-object p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    return p1
.end method

.method static synthetic access$200()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/smartcard/pinservice/SmartCardPinManager;[C)[C
    .locals 0
    .param p0, "x0"    # Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .param p1, "x1"    # [C

    .prologue
    iput-object p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mPin:[C

    return-object p1
.end method

.method static synthetic access$402(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mIsCallbackCalled:Z

    return p1
.end method

.method private bindSmartCardPinService(Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "currentUser"    # Landroid/os/UserHandle;

    .prologue
    const/4 v4, 0x1

    const-string v1, "SmartCardPinManager"

    const-string v2, "bindSmartCardPinService()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-nez v1, :cond_0

    const-string v1, "SmartCardPinManager"

    const-string v2, "mSmartCardPin is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    if-eqz v1, :cond_1

    const-string v1, "SmartCardPinManager"

    const-string v2, "binding to service is progress. new request to bind is ignored"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.smartcard.pinservice.action.BIND_SMART_CARD_PIN_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.smartcard.manager"

    const-string v3, "com.sec.smartcard.pinservice.SmartCardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "SmartCardPinManager"

    const-string v2, "binding to smartcard pin service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const-string v1, "SmartCardPinManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binding to smartcard pin service for a user handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v4, p1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    :goto_1
    iput-boolean v4, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_1
.end method

.method public static isCardRegistered(Landroid/content/Context;)Z
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .local v7, "ret":Z
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "SmartCardPinManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "context : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SmartCardPinManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content resolver : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->SMARTCARD_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const-string v1, "SmartCardPinManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SmartCardPinManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor.count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v7, 0x1

    :cond_0
    return v7
.end method

.method public static isSmartCardAuthenticationInstalled()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":Z
    return v0
.end method

.method public static isSmartCardAuthenticationInstalled(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .local v3, "ret":Z
    if-nez p0, :cond_0

    const-string v5, "SmartCardPinManager"

    const-string v6, "context is null returning"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .end local v3    # "ret":Z
    .local v4, "ret":I
    :goto_0
    return v4

    .end local v4    # "ret":I
    .restart local v3    # "ret":Z
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .local v2, "pkgInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .local v1, "pi":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.smartcard.permission.SMARTCARD_ADAPTER"

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "SmartCardPinManager"

    const-string v6, "isSmartCardAuthenticationInstalled: True"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_2
    move v4, v3

    .restart local v4    # "ret":I
    goto :goto_0
.end method


# virtual methods
.method public bindSmartCardPinService_Sync(Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "currentUser"    # Landroid/os/UserHandle;

    .prologue
    const/4 v5, 0x1

    const-string v2, "SmartCardPinManager"

    const-string v3, "bindSmartCardPinService_Sync()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-nez v2, :cond_0

    const-string v2, "SmartCardPinManager"

    const-string v3, "mSmartCardPin is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    if-eqz v2, :cond_1

    const-string v2, "SmartCardPinManager"

    const-string v3, "binding to service is progress. new request to bind is ignored"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "SmartCardPinManager"

    const-string v3, "binding to smartcard pin service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.smartcard.pinservice.action.BIND_SMART_CARD_PIN_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.smartcard.manager"

    const-string v4, "com.sec.smartcard.pinservice.SmartCardService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p1, :cond_2

    const-string v2, "SmartCardPinManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binding to smartcard pin service for a user handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v5, p1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    :goto_1
    iput-boolean v5, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    :try_start_0
    const-string v2, "SmartCardPinManager"

    const-string v3, "calling queue.take"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_1
.end method

.method public getCardLoginAttemptRemain(Lcom/sec/smartcard/pinservice/ISmartCardInfoCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/sec/smartcard/pinservice/ISmartCardInfoCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v1, p1}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->getCardLoginAttemptRemain(Lcom/sec/smartcard/pinservice/ISmartCardInfoCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "SmartCardPinManager"

    const-string v2, "unable to connect to smartcard pin service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "unable to connect to smartcard pin service"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPin(Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    iget-object v2, p1, Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;->mICallback:Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;

    invoke-interface {v1, v2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->getPin(Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized getPinSync()[C
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .local v0, "cv":Landroid/os/ConditionVariable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mPin:[C

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mIsCallbackCalled:Z

    new-instance v1, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;

    invoke-direct {v1, p0, v0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;-><init>(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Landroid/os/ConditionVariable;)V

    invoke-virtual {p0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->getPin(Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;)V

    iget-boolean v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mIsCallbackCalled:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    :cond_0
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mPin:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .end local v0    # "cv":Landroid/os/ConditionVariable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isCardRegistered()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Z
    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->isCardRegistered()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "SmartCardPinManager"

    const-string v3, "unable to connect to smartcard pin service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isDeviceConnectedWithCard()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .local v0, "ret":Z
    return v0
.end method

.method public isSmartCardAuthenticationAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Z
    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->isSmartCardAuthenticationAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "SmartCardPinManager"

    const-string v3, "unable to connect to smartcard pin service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerCard([CLcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;)V
    .locals 3
    .param p1, "pin"    # [C
    .param p2, "cb"    # Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v1, "SmartCardPinManager"

    const-string v2, "registerCard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v1, p1, p2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->registerCard([CLcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "SmartCardPinManager"

    const-string v2, "unable to connect to smartcard pin service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "unable to connect to smartcard pin service"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public showCardNotRegisteredDialog()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v1}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->showCardNotRegisteredDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "SmartCardPinManager"

    const-string v2, "unable to connect to smartcard pin service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unRegisterCard([CLcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;)V
    .locals 3
    .param p1, "pin"    # [C
    .param p2, "cb"    # Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v1, p1, p2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->unRegisterCard([CLcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "SmartCardPinManager"

    const-string v2, "unable to connect to smartcard pin service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "unable to connect to smartcard pin service"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public unbindSmartCardPinService()V
    .locals 2

    .prologue
    const-string v0, "SmartCardPinManager"

    const-string v1, "unbindSmartCardPinService()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SmartCardPinManager"

    const-string v1, "unbinding to smartcard pin service "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v0, :cond_0

    const-string v0, "SmartCardPinManager"

    const-string v1, "mSmartCardPin is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public verifyCard([CLcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;)V
    .locals 3
    .param p1, "pin"    # [C
    .param p2, "cb"    # Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v1, "SmartCardPinManager"

    const-string v2, "verifyCard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v1, p1, p2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->verifyCard([CLcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "SmartCardPinManager"

    const-string v2, "unable to connect to smartcard pin service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "unable to connect to smartcard pin service"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method
