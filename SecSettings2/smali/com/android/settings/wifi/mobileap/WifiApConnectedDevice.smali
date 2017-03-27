.class public Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;
.super Landroid/preference/Preference;
.source "WifiApConnectedDevice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final GB:Ljava/math/BigDecimal;

.field private static final KB:Ljava/math/BigDecimal;

.field private static final MB:Ljava/math/BigDecimal;

.field private static final ZERO:Ljava/math/BigDecimal;


# instance fields
.field private final BUTTON_INVISIBLE:I

.field private final BUTTON_VISIBLE_MINUS:I

.field private final BUTTON_VISIBLE_PLUS:I

.field private dialog:Landroid/app/AlertDialog;

.field private mConnectedTime:Ljava/lang/Long;

.field private mContext:Landroid/content/Context;

.field private mDeviceName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIp:Ljava/lang/String;

.field private mIsButtonState:I

.field private mIsPushShift:I

.field private mLimitText:Ljava/lang/String;

.field private mMac:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->ZERO:Ljava/math/BigDecimal;

    .line 68
    const-wide/16 v0, 0x400

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->KB:Ljava/math/BigDecimal;

    .line 69
    const-wide/32 v0, 0x100000

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->MB:Ljava/math/BigDecimal;

    .line 70
    const-wide/32 v0, 0x40000000

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->GB:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "mac"    # Ljava/lang/String;
    .param p4, "ip"    # Ljava/lang/String;
    .param p5, "connectedTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 72
    iput v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->BUTTON_INVISIBLE:I

    .line 73
    iput v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->BUTTON_VISIBLE_PLUS:I

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->BUTTON_VISIBLE_MINUS:I

    .line 84
    iput v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    .line 85
    iput v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIsPushShift:I

    .line 348
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mHandler:Landroid/os/Handler;

    .line 90
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    .line 100
    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0xe10

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mConnectedTime:Ljava/lang/Long;

    .line 102
    const v0, 0x7f0401a6

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->setLayoutResource(I)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method private reloadWhiteList()V
    .locals 4

    .prologue
    .line 423
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 424
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 425
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 426
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 428
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 430
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private showDialog(I)V
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/16 v4, 0xa

    const/4 v5, 0x1

    .line 282
    packed-switch p1, :pswitch_data_0

    .line 306
    :goto_0
    :pswitch_0
    return-void

    .line 284
    :pswitch_1
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiApWhiteList;->getSize()I

    move-result v0

    if-lt v0, v4, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e04e4

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 286
    .local v6, "msg":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 287
    .local v7, "toast":Landroid/widget/Toast;
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 292
    .end local v6    # "msg":Ljava/lang/String;
    .end local v7    # "toast":Landroid/widget/Toast;
    :cond_0
    :pswitch_2
    new-instance v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    move v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->dialog:Landroid/app/AlertDialog;

    .line 305
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 295
    :pswitch_3
    new-instance v0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoDialog;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoDialog;-><init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->dialog:Landroid/app/AlertDialog;

    goto :goto_1

    .line 299
    :pswitch_4
    new-instance v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;-><init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->dialog:Landroid/app/AlertDialog;

    goto :goto_1

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public checkDataValue(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 6
    .param p1, "data"    # Ljava/math/BigDecimal;

    .prologue
    const v5, 0x7f0e1088

    const/4 v4, 0x6

    const/4 v3, 0x2

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->GB:Ljava/math/BigDecimal;

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->GB:Ljava/math/BigDecimal;

    invoke-virtual {p1, v2, v3, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e1087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    :cond_0
    :goto_0
    return-object v0

    .line 273
    :cond_1
    sget-object v1, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->MB:Ljava/math/BigDecimal;

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gez v1, :cond_2

    sget-object v1, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-nez v1, :cond_3

    .line 274
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->MB:Ljava/math/BigDecimal;

    invoke-virtual {p1, v2, v3, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_3
    sget-object v1, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->KB:Ljava/math/BigDecimal;

    invoke-virtual {p1, v2, v3, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e1089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 219
    instance-of v1, p1, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    if-nez v1, :cond_0

    .line 220
    const/4 v1, 0x1

    .line 223
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 222
    check-cast v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    .line 223
    .local v0, "other":Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getConnectedTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mConnectedTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method public getLimitedData(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 249
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2, p1}, Landroid/net/wifi/WifiManager;->getWifiApLimitDataFromDb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 251
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "data":Ljava/math/BigDecimal;
    sget-object v3, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->MB:Ljava/math/BigDecimal;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v0, v3, v4, v5}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v3

    .line 254
    .end local v0    # "data":Ljava/math/BigDecimal;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainData(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 260
    .local v3, "wm":Landroid/net/wifi/WifiManager;
    const/4 v2, 0x0

    .line 261
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiManager;->getWifiApRemainDataFromDb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 263
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 264
    .local v1, "remain":Ljava/math/BigDecimal;
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->checkDataValue(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v2

    .line 266
    .end local v1    # "remain":Ljava/math/BigDecimal;
    :cond_0
    return-object v2
.end method

.method public isWifiApDbContain(Ljava/lang/String;)Z
    .locals 3
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 244
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->isWifiApDbContain(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 18
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 107
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->dialog:Landroid/app/AlertDialog;

    .line 108
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v12

    .line 109
    .local v12, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v12, v14}, Landroid/net/wifi/WifiApWhiteList;->isContains(Ljava/lang/String;)Z

    move-result v4

    .line 110
    .local v4, "isContains":Z
    const/4 v9, 0x0

    .line 111
    .local v9, "mTxtView":Landroid/widget/TextView;
    if-eqz v4, :cond_0

    .line 112
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v12, v14}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 113
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    const v14, 0x7f0d0126

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "mTxtView":Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 117
    .restart local v9    # "mTxtView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v15, "wifi"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    .line 118
    .local v13, "wm":Landroid/net/wifi/WifiManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiManager;->isWifiApDbContain(Ljava/lang/String;)Z

    move-result v5

    .line 119
    .local v5, "isWifiApDbContain":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiManager;->isWifiApListContain(Ljava/lang/String;)Z

    move-result v6

    .line 120
    .local v6, "isWifiApListContain":Z
    if-eqz v5, :cond_5

    .line 121
    new-instance v7, Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiManager;->getWifiApLimitDataFromDb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 122
    .local v7, "limit":Ljava/math/BigDecimal;
    new-instance v10, Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiManager;->getWifiApRemainDataFromDb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 123
    .local v10, "remain":Ljava/math/BigDecimal;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e1088

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "dataUnit":Ljava/lang/String;
    sget-object v14, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->MB:Ljava/math/BigDecimal;

    const/4 v15, 0x0

    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-virtual {v7, v14, v15, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, "limitData":Ljava/lang/String;
    sget-object v14, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v7, v14}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v14

    if-nez v14, :cond_3

    .line 126
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e04b8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mLimitText:Ljava/lang/String;

    .line 132
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mLimitText:Ljava/lang/String;

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    if-nez v6, :cond_1

    .line 134
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiManager;->addWifiApData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .end local v3    # "dataUnit":Ljava/lang/String;
    .end local v7    # "limit":Ljava/math/BigDecimal;
    .end local v8    # "limitData":Ljava/lang/String;
    .end local v10    # "remain":Ljava/math/BigDecimal;
    :cond_1
    :goto_1
    invoke-super/range {p0 .. p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 149
    const v14, 0x7f0d0423

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 151
    .local v1, "btn":Landroid/widget/LinearLayout;
    const v14, 0x7f0d0424

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 152
    .local v2, "btnImg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v15, "wifi"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    .line 155
    .local v11, "wc":Landroid/net/wifi/WifiConfiguration;
    iget v14, v11, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_6

    .line 156
    if-nez v4, :cond_2

    .line 157
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    .line 158
    const v14, 0x7f02034a

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e0475

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 160
    new-instance v14, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice$1;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 167
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e0475

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 193
    :cond_2
    :goto_2
    const v14, 0x7f0d0422

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    new-instance v15, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice$3;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const v14, 0x7f0d0422

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    new-instance v15, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice$4;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 215
    return-void

    .line 127
    .end local v1    # "btn":Landroid/widget/LinearLayout;
    .end local v2    # "btnImg":Landroid/widget/ImageView;
    .end local v11    # "wc":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "dataUnit":Ljava/lang/String;
    .restart local v7    # "limit":Ljava/math/BigDecimal;
    .restart local v8    # "limitData":Ljava/lang/String;
    .restart local v10    # "remain":Ljava/math/BigDecimal;
    :cond_3
    sget-object v14, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v10, v14}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v14

    if-nez v14, :cond_4

    .line 128
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e04b9

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v8, v16, v17

    const/16 v17, 0x1

    aput-object v3, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mLimitText:Ljava/lang/String;

    goto/16 :goto_0

    .line 130
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e04bc

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v8, v16, v17

    const/16 v17, 0x1

    aput-object v3, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mLimitText:Ljava/lang/String;

    goto/16 :goto_0

    .line 136
    .end local v3    # "dataUnit":Ljava/lang/String;
    .end local v7    # "limit":Ljava/math/BigDecimal;
    .end local v8    # "limitData":Ljava/lang/String;
    .end local v10    # "remain":Ljava/math/BigDecimal;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e04bb

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 169
    .restart local v1    # "btn":Landroid/widget/LinearLayout;
    .restart local v2    # "btnImg":Landroid/widget/ImageView;
    .restart local v11    # "wc":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    iget v14, v11, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    .line 170
    if-eqz v4, :cond_2

    .line 171
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    .line 172
    const v14, 0x7f02034d

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    new-instance v14, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice$2;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e04a9

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 189
    :cond_7
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    .line 190
    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 16
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 352
    move-object/from16 v0, p1

    instance-of v11, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v11, :cond_1

    .line 353
    const-string v11, "WifiApConnectedDevice"

    const-string v12, "onClick"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v9, p1

    .line 354
    check-cast v9, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    .line 355
    .local v9, "whitelsitDialog":Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    .line 357
    invoke-virtual {v9}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->getType()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 420
    .end local v9    # "whitelsitDialog":Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;
    .end local p1    # "dialog":Landroid/content/DialogInterface;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 359
    .restart local v9    # "whitelsitDialog":Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;
    .restart local p1    # "dialog":Landroid/content/DialogInterface;
    :pswitch_1
    const-string v11, "WifiApConnectedDevice"

    const-string v12, "ADD_DEVICE_FROM_CONNECTED"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    check-cast p1, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 362
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const v6, 0x7f0e0487

    .line 365
    .local v6, "msgId":I
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 366
    .local v7, "msge":Landroid/os/Message;
    const/16 v11, 0x4d

    iput v11, v7, Landroid/os/Message;->what:I

    .line 367
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 368
    .local v2, "args":Landroid/os/Bundle;
    const-string v11, "feature"

    const-string v12, "MHAD"

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v11, "extra"

    const-string v12, "ADD"

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iput-object v2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 371
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v12, "wifi"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    invoke-virtual {v11, v7}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 391
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v7    # "msge":Landroid/os/Message;
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v6}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice$5;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;I)V

    const-wide/16 v14, 0x1f4

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->notifyHierarchyChanged()V

    goto :goto_0

    .line 375
    .end local v6    # "msgId":I
    .restart local p1    # "dialog":Landroid/content/DialogInterface;
    :pswitch_2
    const-string v11, "WifiApConnectedDevice"

    const-string v12, "REMOVE_DEVICE_FROM_CONNECTED"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    .line 377
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->reloadWhiteList()V

    .line 378
    const v6, 0x7f0e0488

    .line 380
    .restart local v6    # "msgId":I
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 381
    .local v5, "msg":Landroid/os/Message;
    const/4 v11, 0x4

    iput v11, v5, Landroid/os/Message;->what:I

    .line 382
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 383
    .local v3, "b":Landroid/os/Bundle;
    const-string v11, "mac"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iput-object v3, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 385
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v12, "wifi"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    invoke-virtual {v11, v5}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto :goto_1

    .line 407
    .end local v3    # "b":Landroid/os/Bundle;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "msgId":I
    .end local v9    # "whitelsitDialog":Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;
    :cond_1
    move-object/from16 v0, p1

    instance-of v11, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;

    if-eqz v11, :cond_0

    move-object/from16 v8, p1

    .line 409
    check-cast v8, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;

    .line 410
    .local v8, "setdatalimitdialog":Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v12, "wifi"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 411
    .local v10, "wm":Landroid/net/wifi/WifiManager;
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_3

    .line 412
    new-instance v4, Ljava/math/BigDecimal;

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->getInputLimitData()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 413
    .local v4, "limitdata":Ljava/math/BigDecimal;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    sget-object v13, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->MB:Ljava/math/BigDecimal;

    invoke-virtual {v4, v13}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/net/wifi/WifiManager;->addWifiApData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .end local v4    # "limitdata":Ljava/math/BigDecimal;
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->notifyHierarchyChanged()V

    goto/16 :goto_0

    .line 414
    :cond_3
    const/4 v11, -0x2

    move/from16 v0, p2

    if-ne v0, v11, :cond_2

    .line 415
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiManager;->deleteWifiApData(Ljava/lang/String;)V

    goto :goto_2

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x1

    .line 310
    const-string v1, "WifiApConnectedDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---> onKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 312
    sparse-switch p2, :sswitch_data_0

    .line 341
    :cond_0
    const/16 v1, 0x3b

    if-ne p2, v1, :cond_3

    .line 342
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIsPushShift:I

    .line 345
    :cond_1
    :goto_0
    return v0

    .line 314
    :sswitch_0
    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 317
    :sswitch_1
    iget v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    if-ne v1, v0, :cond_1

    .line 318
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 321
    :sswitch_2
    iget v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 322
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 325
    :sswitch_3
    iget v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIsPushShift:I

    if-nez v1, :cond_1

    .line 326
    iget v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    if-ne v1, v0, :cond_1

    .line 327
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 331
    :sswitch_4
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 332
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->dialog:Landroid/app/AlertDialog;

    instance-of v1, v1, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoDialog;

    if-nez v1, :cond_1

    .line 333
    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 336
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 345
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 312
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_4
        0x42 -> :sswitch_0
        0x45 -> :sswitch_2
        0x46 -> :sswitch_3
        0x51 -> :sswitch_1
    .end sparse-switch
.end method
