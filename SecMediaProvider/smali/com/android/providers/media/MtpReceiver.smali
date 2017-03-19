.class public Lcom/android/providers/media/MtpReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MtpReceiver.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/android/providers/media/MtpReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MtpReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleUsbState(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 48
    .local v1, "extras":Landroid/os/Bundle;
    const-string v6, "configured"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 49
    .local v0, "connected":Z
    const-string v6, "mtp"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 50
    .local v2, "mtpEnabled":Z
    const-string v6, "ptp"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 51
    .local v3, "ptpEnabled":Z
    const-string v6, "unlocked"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 53
    .local v5, "unlocked":Z
    if-eqz v0, :cond_2

    if-nez v2, :cond_0

    if-eqz v3, :cond_2

    .line 54
    :cond_0
    new-instance p2, Landroid/content/Intent;

    .end local p2    # "intent":Landroid/content/Intent;
    const-class v6, Lcom/android/providers/media/MtpService;

    invoke-direct {p2, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .restart local p2    # "intent":Landroid/content/Intent;
    const-string v6, "unlocked"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    if-eqz v3, :cond_1

    .line 57
    const-string v6, "ptp"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "content://media/none/mtp_connected"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 71
    :goto_0
    return-void

    .line 65
    :cond_2
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/android/providers/media/MtpService;

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v4

    .line 68
    .local v4, "status":Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "content://media/none/mtp_connected"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    const/4 v2, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 38
    .local v1, "usbState":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 39
    invoke-direct {p0, p1, v1}, Lcom/android/providers/media/MtpReceiver;->handleUsbState(Landroid/content/Context;Landroid/content/Intent;)V

    .line 44
    .end local v1    # "usbState":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/MtpReceiver;->handleUsbState(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
