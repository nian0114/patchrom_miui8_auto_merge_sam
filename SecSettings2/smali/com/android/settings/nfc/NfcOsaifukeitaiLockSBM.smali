.class public Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;
.super Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLock;
.source "NfcOsaifukeitaiLockSBM.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private mFelicaLockResultCode:I

.field private mLockState:Z

.field private mNfcOsaifuSettingsData:Lcom/android/settings_ex/nfc/NfcOsaifukeitaiSettingsData;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mbSwitchBar:Z

.field private mfilter:Landroid/content/IntentFilter;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLock;-><init>()V

    .line 64
    iput-boolean v0, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mbSwitchBar:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mLockState:Z

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mFelicaLockResultCode:I

    .line 85
    new-instance v0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM$1;-><init>(Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLock;-><init>()V

    .line 64
    iput-boolean v0, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mbSwitchBar:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mLockState:Z

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mFelicaLockResultCode:I

    .line 85
    new-instance v0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM$1;-><init>(Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    iput-object p1, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->activity:Landroid/app/Activity;

    .line 83
    new-instance v0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiSettingsData;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mNfcOsaifuSettingsData:Lcom/android/settings_ex/nfc/NfcOsaifukeitaiSettingsData;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;)Lcom/android/settings_ex/nfc/NfcOsaifukeitaiSettingsData;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mNfcOsaifuSettingsData:Lcom/android/settings_ex/nfc/NfcOsaifukeitaiSettingsData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->setLockSwitch(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->setExplainedWord(II)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mbSwitchBar:Z

    return p1
.end method

.method private setExplainedWord(II)V
    .locals 7
    .param p1, "clf_lock"    # I
    .param p2, "uim_lock"    # I

    .prologue
    const/16 v6, 0x100

    const/4 v5, 0x1

    .line 169
    const-string v2, "[NfcOsaifukeitaiLockSBM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setExplainedWord :  clf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , uim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    move v0, p1

    .line 172
    .local v0, "clflock":I
    move v1, p2

    .line 174
    .local v1, "uimlock":I
    if-ne p1, v6, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 177
    :cond_0
    if-ne p2, v6, :cond_1

    .line 178
    const/4 v1, 0x0

    .line 181
    :cond_1
    and-int/lit8 v2, v0, 0x1

    if-ne v2, v5, :cond_2

    .line 182
    iput-boolean v5, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mLockState:Z

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mLockState:Z

    goto :goto_0
.end method

.method private setLockSwitch(II)V
    .locals 7
    .param p1, "clf_lock"    # I
    .param p2, "uim_lock"    # I

    .prologue
    const/16 v6, 0x100

    const/4 v5, 0x1

    .line 148
    const-string v2, "[NfcOsaifukeitaiLockSBM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLockSwitch  :  clf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , uim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    move v0, p1

    .line 151
    .local v0, "clflock":I
    move v1, p2

    .line 153
    .local v1, "uimlock":I
    if-ne p1, v6, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 156
    :cond_0
    if-ne p2, v6, :cond_1

    .line 157
    const/4 v1, 0x0

    .line 160
    :cond_1
    and-int/lit8 v2, v0, 0x1

    if-ne v2, v5, :cond_2

    .line 161
    iput-boolean v5, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mbSwitchBar:Z

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mbSwitchBar:Z

    goto :goto_0
.end method


# virtual methods
.method public getLockState()Z
    .locals 2

    .prologue
    .line 193
    const-string v0, "[NfcOsaifukeitaiLockSBM]"

    const-string v1, "[S] getLockStateSBM"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-boolean v0, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mLockState:Z

    return v0
.end method

.method public getSwitchBarState()Z
    .locals 2

    .prologue
    .line 189
    const-string v0, "[NfcOsaifukeitaiLockSBM]"

    const-string v1, "[S] getSwitchBarStateSBM"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-boolean v0, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mbSwitchBar:Z

    return v0
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 141
    const-string v0, "[NfcOsaifukeitaiLockSBM]"

    const-string v1, "[S] onPauseSBM"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    const-string v0, "[NfcOsaifukeitaiLockSBM]"

    const-string v1, "[E] onPauseSBM"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 126
    const-string v2, "[NfcOsaifukeitaiLockSBM]"

    const-string v3, "NfcOsaifukeitaiLockSBM onResume & registerReceiver"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mfilter:Landroid/content/IntentFilter;

    .line 128
    iget-object v2, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mfilter:Landroid/content/IntentFilter;

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mfilter:Landroid/content/IntentFilter;

    const-string v3, "com.samsung.felica.action.LOCKSTATUS_LOCK"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mfilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_EF_LOCK_UPDATED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mfilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mNfcOsaifuSettingsData:Lcom/android/settings_ex/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v0

    .line 135
    .local v0, "clf_lock":I
    iget-object v2, p0, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->mNfcOsaifuSettingsData:Lcom/android/settings_ex/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v1

    .line 136
    .local v1, "uim_lock":I
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->setLockSwitch(II)V

    .line 137
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/nfc/NfcOsaifukeitaiLockSBM;->setExplainedWord(II)V

    .line 138
    return-void
.end method
