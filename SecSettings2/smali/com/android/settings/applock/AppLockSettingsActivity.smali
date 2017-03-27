.class public Lcom/android/settings_ex/applock/AppLockSettingsActivity;
.super Landroid/app/Activity;
.source "AppLockSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applock/AppLockSettingsActivity$AppLockListFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mHasVerified:Z

.field private mIsDBChanged:Z

.field private mIsMasterOn:Z

.field private mListFragment:Lcom/android/settings_ex/applock/AppLockSettingsActivity$AppLockListFragment;

.field private final mLockedAppsDBObserver:Landroid/database/ContentObserver;

.field private mMasterSwitch:Landroid/widget/Switch;

.field private mMasterText:Landroid/widget/TextView;

.field private mPackageInfoUtil:Lcom/android/settings_ex/applock/PackageInfoUtil;

.field private mSwitchBar:Landroid/widget/LinearLayout;

.field mSwitchBarClickListener:Landroid/view/View$OnClickListener;

.field public mSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mHasVerified:Z

    .line 45
    new-instance v0, Lcom/android/settings_ex/applock/AppLockSettingsActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/applock/AppLockSettingsActivity$1;-><init>(Lcom/android/settings_ex/applock/AppLockSettingsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mLockedAppsDBObserver:Landroid/database/ContentObserver;

    .line 93
    new-instance v0, Lcom/android/settings_ex/applock/AppLockSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applock/AppLockSettingsActivity$2;-><init>(Lcom/android/settings_ex/applock/AppLockSettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mSwitchBarClickListener:Landroid/view/View$OnClickListener;

    .line 100
    new-instance v0, Lcom/android/settings_ex/applock/AppLockSettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applock/AppLockSettingsActivity$3;-><init>(Lcom/android/settings_ex/applock/AppLockSettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 277
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/applock/AppLockSettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applock/AppLockSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mIsDBChanged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/applock/AppLockSettingsActivity;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applock/AppLockSettingsActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mMasterSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/applock/AppLockSettingsActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applock/AppLockSettingsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->callLockType(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/applock/AppLockSettingsActivity;)Lcom/android/settings_ex/applock/PackageInfoUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applock/AppLockSettingsActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mPackageInfoUtil:Lcom/android/settings_ex/applock/PackageInfoUtil;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/applock/AppLockSettingsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applock/AppLockSettingsActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mMasterText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/applock/AppLockSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applock/AppLockSettingsActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->updateCountViewState()V

    return-void
.end method

.method private callLockType(I)V
    .locals 8
    .param p1, "requestCode"    # I

    .prologue
    .line 138
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 139
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, "firstStart"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    const-class v0, Lcom/android/settings_ex/applock/AppLockTypeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0e11f0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v2    # "args":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v7

    .line 144
    .local v7, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private loadDB()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mPackageInfoUtil:Lcom/android/settings_ex/applock/PackageInfoUtil;

    iget-object v1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applock/PackageInfoUtil;->loadDBState(Landroid/content/Context;)V

    .line 249
    iget-object v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mPackageInfoUtil:Lcom/android/settings_ex/applock/PackageInfoUtil;

    iget-object v1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applock/PackageInfoUtil;->loadFolderInfo(Landroid/content/Context;)V

    .line 250
    return-void
.end method

.method private updateCountViewState()V
    .locals 3

    .prologue
    .line 253
    iget-object v1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mPackageInfoUtil:Lcom/android/settings_ex/applock/PackageInfoUtil;

    iget-object v2, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/applock/PackageInfoUtil;->countLockedApps(Landroid/content/Context;)I

    move-result v0

    .line 254
    .local v0, "countNumber":I
    iget-object v1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mListFragment:Lcom/android/settings_ex/applock/AppLockSettingsActivity$AppLockListFragment;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/applock/AppLockSettingsActivity$AppLockListFragment;->updateCountNumberCategory(I)V

    .line 255
    return-void
.end method


# virtual methods
.method public StartVerifyActivity()V
    .locals 5

    .prologue
    .line 149
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 150
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 152
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "APPLOCK_APPS_FROM_SETTINGS"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    const/16 v3, 0x2712

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 156
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public initView()V
    .locals 2

    .prologue
    .line 81
    const v0, 0x7f04003c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->setContentView(I)V

    .line 82
    const v0, 0x7f0d00db

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mSwitchBar:Landroid/widget/LinearLayout;

    .line 83
    const v0, 0x7f0d00dd

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mMasterSwitch:Landroid/widget/Switch;

    .line 84
    const v0, 0x7f0d00dc

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mMasterText:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mMasterText:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0d00de

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applock/AppLockSettingsActivity$AppLockListFragment;

    iput-object v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mListFragment:Lcom/android/settings_ex/applock/AppLockSettingsActivity$AppLockListFragment;

    .line 87
    iget-boolean v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mIsMasterOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->setMasterSwitchView(Ljava/lang/Boolean;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mMasterSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mSwitchBar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mSwitchBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "intent":Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 186
    :goto_0
    return-void

    .line 169
    :pswitch_0
    if-ne p2, v1, :cond_0

    .line 170
    sget-object v1, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->TAG:Ljava/lang/String;

    const-string v2, "REQUEST_CODE_SET_LOCK RESULT_OK"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->finish()V

    goto :goto_0

    .line 178
    :pswitch_1
    if-ne p2, v1, :cond_1

    .line 179
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mHasVerified:Z

    .line 180
    sget-object v1, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->TAG:Ljava/lang/String;

    const-string v2, "REQUEST_CODE_VERIFY_LOCK RESULT_OK"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->finish()V

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 259
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 260
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mContext:Landroid/content/Context;

    .line 58
    if-eqz p1, :cond_0

    .line 59
    const-string v1, "has_verified"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mHasVerified:Z

    .line 60
    sget-object v1, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savedInstanceState != null: mHasVerified="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mHasVerified:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    invoke-static {}, Lcom/android/settings_ex/applock/PackageInfoUtil;->getInstance()Lcom/android/settings_ex/applock/PackageInfoUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mPackageInfoUtil:Lcom/android/settings_ex/applock/PackageInfoUtil;

    .line 63
    iget-object v1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mPackageInfoUtil:Lcom/android/settings_ex/applock/PackageInfoUtil;

    invoke-virtual {p0}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/applock/PackageInfoUtil;->getLauncherApps(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 64
    iget-object v1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mPackageInfoUtil:Lcom/android/settings_ex/applock/PackageInfoUtil;

    iget-object v2, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/applock/PackageInfoUtil;->getMasterValue(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mIsMasterOn:Z

    .line 65
    iget-boolean v1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mIsMasterOn:Z

    if-eqz v1, :cond_1

    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->loadDB()V

    .line 67
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mIsDBChanged:Z

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings_ex/applock/AppLockUtil;->getLockType(Landroid/content/Context;)I

    move-result v0

    .line 70
    .local v0, "lockType":I
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mHasVerified:Z

    if-nez v1, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->StartVerifyActivity()V

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->initView()V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mPackageInfoUtil:Lcom/android/settings_ex/applock/PackageInfoUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "smartmanager_locked_apps_packages"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mLockedAppsDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 78
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mLockedAppsDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 244
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 245
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 264
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 271
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 266
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->finish()V

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 236
    iget-object v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mPackageInfoUtil:Lcom/android/settings_ex/applock/PackageInfoUtil;

    iget-object v1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/applock/PackageInfoUtil;->updateDB(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mPackageInfoUtil:Lcom/android/settings_ex/applock/PackageInfoUtil;

    iget-object v1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.applock.intent.action.APPLOCKED_STATUS_CHANGED"

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings_ex/applock/PackageInfoUtil;->sendStatusBroadcast(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 238
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 239
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 206
    iget-object v6, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mPackageInfoUtil:Lcom/android/settings_ex/applock/PackageInfoUtil;

    iget-object v7, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/applock/PackageInfoUtil;->getMasterValue(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mIsMasterOn:Z

    .line 207
    iget-object v6, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mPackageInfoUtil:Lcom/android/settings_ex/applock/PackageInfoUtil;

    invoke-virtual {v6}, Lcom/android/settings_ex/applock/PackageInfoUtil;->sortList()V

    .line 208
    iget-boolean v6, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mIsMasterOn:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mIsDBChanged:Z

    if-eqz v6, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->loadDB()V

    .line 210
    iput-boolean v8, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mIsDBChanged:Z

    .line 211
    iget-object v6, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 212
    .local v3, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    .end local v3    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mPackageInfoUtil:Lcom/android/settings_ex/applock/PackageInfoUtil;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "com.samsung.applock.mark"

    invoke-virtual {p0, v6, v8}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 216
    .local v5, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mPackageInfoUtil:Lcom/android/settings_ex/applock/PackageInfoUtil;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "package_remove"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 217
    .local v4, "remove_mark":Z
    iget-object v6, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mPackageInfoUtil:Lcom/android/settings_ex/applock/PackageInfoUtil;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "package_add"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 218
    .local v0, "add_mark":Z
    if-nez v4, :cond_1

    if-eqz v0, :cond_2

    .line 219
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mPackageInfoUtil:Lcom/android/settings_ex/applock/PackageInfoUtil;

    iget-object v7, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/applock/PackageInfoUtil;->getLauncherApps(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 220
    iget-object v6, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 221
    .restart local v3    # "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 222
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 223
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v6, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mPackageInfoUtil:Lcom/android/settings_ex/applock/PackageInfoUtil;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "package_remove"

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 224
    iget-object v6, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mPackageInfoUtil:Lcom/android/settings_ex/applock/PackageInfoUtil;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "package_add"

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 225
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 228
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings_ex/applock/AppLockUtil;->getLockType(Landroid/content/Context;)I

    move-result v2

    .line 229
    .local v2, "lockType":I
    if-nez v2, :cond_3

    .line 230
    iget-object v6, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mMasterSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 232
    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 160
    const-string v0, "has_verified"

    iget-boolean v1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mHasVerified:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 161
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 162
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mHandler:Landroid/os/Handler;

    .line 123
    return-void
.end method

.method public setMasterSwitchView(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "isMasterOn"    # Ljava/lang/Boolean;

    .prologue
    .line 126
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mMasterSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mMasterText:Landroid/widget/TextView;

    const v1, 0x7f0e11ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mMasterSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mMasterText:Landroid/widget/TextView;

    const v1, 0x7f0e11ed

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 8
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 190
    const/4 v6, 0x0

    .line 191
    .local v6, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 192
    if-eqz p4, :cond_1

    .line 193
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 199
    :cond_0
    :goto_0
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-static/range {v0 .. v7}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 201
    return-void

    .line 196
    :cond_1
    const-string v6, ""

    goto :goto_0
.end method
