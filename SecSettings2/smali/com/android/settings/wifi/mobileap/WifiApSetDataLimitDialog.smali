.class public Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;
.super Landroid/app/AlertDialog;
.source "WifiApSetDataLimitDialog.java"


# instance fields
.field dataWatcher:Landroid/text/TextWatcher;

.field private mButtonOk:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDevice:Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

.field private mEtDataLimit:Landroid/widget/EditText;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMac:Ljava/lang/String;

.field private mTvDataLength:Landroid/widget/TextView;

.field private mTvDeviceName:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog$1;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->dataWatcher:Landroid/text/TextWatcher;

    .line 48
    iput-object p2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mDevice:Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    .line 49
    iput-object p3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mDevice:Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mMac:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mTvDataLength:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->validate()V

    return-void
.end method

.method private validate()V
    .locals 2

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 96
    const/4 v0, 0x1

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mButtonOk:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mButtonOk:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 101
    :cond_1
    return-void
.end method


# virtual methods
.method public getInputLimitData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040250

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 57
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->setView(Landroid/view/View;)V

    .line 58
    const v3, 0x7f0e0c8b

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->setTitle(I)V

    .line 60
    const v3, 0x7f0d05ac

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mTvDeviceName:Landroid/widget/TextView;

    .line 61
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mTvDeviceName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mDevice:Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const v3, 0x7f0d05ad

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    .line 64
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->dataWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 66
    const v3, 0x7f0d05af

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mTvDataLength:Landroid/widget/TextView;

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e083a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v3, v4}, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 69
    const/4 v3, -0x3

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0545

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 70
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mDevice:Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mDevice:Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->isWifiApDbContain(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mDevice:Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->getLimitedData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 73
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    .line 74
    const/4 v3, -0x2

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e04be

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 77
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mButtonOk:Landroid/widget/Button;

    .line 80
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->validate()V

    .line 83
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 84
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 85
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x4d

    iput v3, v1, Landroid/os/Message;->what:I

    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "feature"

    const-string v4, "MHDL"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSetDataLimitDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 91
    return-void
.end method
