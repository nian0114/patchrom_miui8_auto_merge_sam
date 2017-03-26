.class public Lcom/android/nfc/NfcChnEnablePopup;
.super Landroid/app/Activity;
.source "NfcChnEnablePopup.java"


# static fields
.field public static final PREF:Ljava/lang/String; = "NfcServicePrefs"

.field private static final PREF_DISABLE_DIALOG:Ljava/lang/String; = "disable_chn_enable_dialog"

.field private static final TAG:Ljava/lang/String; = "NfcChnEnablePopup"


# instance fields
.field private mEventDecision:Z

.field private mNfcChnEnablePopup:Landroid/app/AlertDialog;

.field private mPopup:Landroid/app/AlertDialog$Builder;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/nfc/NfcChnEnablePopup;->mNfcChnEnablePopup:Landroid/app/AlertDialog;

    .line 43
    iput-object v0, p0, Lcom/android/nfc/NfcChnEnablePopup;->mPopup:Landroid/app/AlertDialog$Builder;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcChnEnablePopup;->mEventDecision:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/nfc/NfcChnEnablePopup;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcChnEnablePopup;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/nfc/NfcChnEnablePopup;->mEventDecision:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/nfc/NfcChnEnablePopup;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcChnEnablePopup;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/nfc/NfcChnEnablePopup;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const-string v13, "NfcChnEnablePopup"

    const-string v14, "onCreate"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v13, "NfcServicePrefs"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/nfc/NfcChnEnablePopup;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/nfc/NfcChnEnablePopup;->mPrefs:Landroid/content/SharedPreferences;

    .line 58
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/NfcChnEnablePopup;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/nfc/NfcChnEnablePopup;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcChnEnablePopup;->getApplicationContext()Landroid/content/Context;

    const-string v13, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/nfc/NfcChnEnablePopup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 61
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v13, 0x7f030006

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 63
    .local v12, "v":Landroid/view/View;
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/nfc/NfcChnEnablePopup;->mPopup:Landroid/app/AlertDialog$Builder;

    .line 64
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/NfcChnEnablePopup;->mPopup:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v13, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 65
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/NfcChnEnablePopup;->mPopup:Landroid/app/AlertDialog$Builder;

    const v14, 0x7f070001

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcChnEnablePopup;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "CallingPid"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 69
    .local v2, "CallingPid":I
    const-string v4, ""

    .line 71
    .local v4, "applicationName":Ljava/lang/String;
    const-string v13, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/nfc/NfcChnEnablePopup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 72
    .local v3, "am":Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9

    .line 73
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcChnEnablePopup;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 75
    .local v10, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 77
    .local v8, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :try_start_0
    iget v13, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v13, v2, :cond_0

    .line 78
    iget-object v13, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/16 v14, 0x80

    invoke-virtual {v10, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 80
    const-string v13, "NfcChnEnablePopup"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "applicationName is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v5

    .line 83
    .local v5, "e":Ljava/lang/Exception;
    const-string v13, "NfcChnEnablePopup"

    const-string v14, "failed to get application name"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    const v13, 0x7f09000b

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 88
    .local v11, "textview":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcChnEnablePopup;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f070032

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    const/16 v16, 0x1

    const v17, 0x7f070001

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcChnEnablePopup;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/NfcChnEnablePopup;->mPopup:Landroid/app/AlertDialog$Builder;

    const v14, 0x7f07000d

    new-instance v15, Lcom/android/nfc/NfcChnEnablePopup$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v12}, Lcom/android/nfc/NfcChnEnablePopup$1;-><init>(Lcom/android/nfc/NfcChnEnablePopup;Landroid/view/View;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/NfcChnEnablePopup;->mPopup:Landroid/app/AlertDialog$Builder;

    const v14, 0x7f07002f

    new-instance v15, Lcom/android/nfc/NfcChnEnablePopup$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v12}, Lcom/android/nfc/NfcChnEnablePopup$2;-><init>(Lcom/android/nfc/NfcChnEnablePopup;Landroid/view/View;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/NfcChnEnablePopup;->mPopup:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/nfc/NfcChnEnablePopup;->mNfcChnEnablePopup:Landroid/app/AlertDialog;

    .line 120
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/NfcChnEnablePopup;->mNfcChnEnablePopup:Landroid/app/AlertDialog;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 121
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/NfcChnEnablePopup;->mNfcChnEnablePopup:Landroid/app/AlertDialog;

    new-instance v14, Lcom/android/nfc/NfcChnEnablePopup$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/nfc/NfcChnEnablePopup$3;-><init>(Lcom/android/nfc/NfcChnEnablePopup;)V

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/NfcChnEnablePopup;->mNfcChnEnablePopup:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    .line 136
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "NfcChnEnablePopup"

    const-string v1, " onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/nfc/NfcChnEnablePopup;->mNfcChnEnablePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/nfc/NfcChnEnablePopup;->mNfcChnEnablePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcChnEnablePopup;->mNfcChnEnablePopup:Landroid/app/AlertDialog;

    .line 146
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 147
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "NfcChnEnablePopup"

    const-string v1, " onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/nfc/NfcChnEnablePopup;->mNfcChnEnablePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 153
    iget-boolean v0, p0, Lcom/android/nfc/NfcChnEnablePopup;->mEventDecision:Z

    if-nez v0, :cond_0

    .line 154
    const-string v0, "NfcChnEnablePopup"

    const-string v1, " onPause- mEventDecision yet close popup"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/NfcChnEnablePopup;->mEventDecision:Z

    .line 156
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->sendChnEnableCancel()V

    .line 157
    invoke-virtual {p0}, Lcom/android/nfc/NfcChnEnablePopup;->finish()V

    .line 160
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 161
    return-void
.end method
