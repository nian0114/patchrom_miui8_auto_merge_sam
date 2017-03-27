.class public Lcom/android/settings_ex/ConfirmUCMLockPassword;
.super Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;
.source "ConfirmUCMLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;
    }
.end annotation


# static fields
.field private static mCsNameUri:Ljava/lang/String;

.field private static mFromAppLock:Z

.field private static mFromPersonalPage:Z

.field private static mFromPrivateBox:Z

.field private static mPersonalPage_isPin:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    sput-boolean v0, Lcom/android/settings_ex/ConfirmUCMLockPassword;->mFromPersonalPage:Z

    .line 70
    sput-boolean v0, Lcom/android/settings_ex/ConfirmUCMLockPassword;->mFromPrivateBox:Z

    .line 72
    sput-boolean v0, Lcom/android/settings_ex/ConfirmUCMLockPassword;->mPersonalPage_isPin:Z

    .line 73
    sput-boolean v0, Lcom/android/settings_ex/ConfirmUCMLockPassword;->mFromAppLock:Z

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/ConfirmUCMLockPassword;->mCsNameUri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;-><init>()V

    .line 108
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 66
    sput-boolean p0, Lcom/android/settings_ex/ConfirmUCMLockPassword;->mFromPersonalPage:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 66
    sput-boolean p0, Lcom/android/settings_ex/ConfirmUCMLockPassword;->mPersonalPage_isPin:Z

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/settings_ex/ConfirmUCMLockPassword;->mCsNameUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 66
    sput-object p0, Lcom/android/settings_ex/ConfirmUCMLockPassword;->mCsNameUri:Ljava/lang/String;

    return-object p0
.end method

.method public static createIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirmCredentials"    # Z
    .param p2, "csName"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ConfirmUCMLockPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "lockscreen.ucscredentialstoragenameuri"

    const-string v2, ""

    invoke-static {p2, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    return-object v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 81
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 95
    const-class v0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->onWindowFocusChanged(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0d049b

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 103
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    if-eqz v1, :cond_0

    .line 104
    check-cast v0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0, p1}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->onWindowFocusChanged(Z)V

    .line 106
    :cond_0
    return-void
.end method
