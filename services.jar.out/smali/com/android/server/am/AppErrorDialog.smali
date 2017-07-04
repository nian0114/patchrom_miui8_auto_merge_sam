.class final Lcom/android/server/am/AppErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppErrorDialog.java"


# static fields
.field static final DISMISS_TIMEOUT:J = 0x493e0L

.field static final FORCE_QUIT:I = 0x0

.field static final FORCE_QUIT_AND_REPORT:I = 0x1


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Z)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "result"    # Lcom/android/server/am/AppErrorResult;
    .param p4, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p5, "skipDump"    # Z

    .prologue
    .line 54
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 156
    new-instance v11, Lcom/android/server/am/AppErrorDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/server/am/AppErrorDialog$2;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    .line 57
    const-string v11, "com.android.phone"

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 58
    const-string v11, "PA"

    const-string v12, "EX"

    invoke-static {v11, v12}, Landroid/os/Debug;->dumpResetReason(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 64
    .local v9, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 65
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 66
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 69
    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    .local v8, "name":Ljava/lang/CharSequence;
    if-eqz v8, :cond_8

    .line 71
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x104036e

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v9, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-boolean v11, Lcom/android/server/am/ActivityManagerService;->mIsSPDError:Z

    if-eqz v11, :cond_7

    const-string v11, " [01]"

    :goto_0
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/am/AppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 81
    :goto_1
    sget-boolean v11, Lcom/android/server/am/ActivityManagerService;->mIsSPDError:Z

    if-nez v11, :cond_1

    if-nez p5, :cond_1

    .line 83
    const-string v3, "-k -t -z -d -o /data/log/dumpstate_app_error"

    .line 84
    .local v3, "dumpCmd":Ljava/lang/String;
    const-string/jumbo v11, "user"

    sget-object v12, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 85
    new-instance v11, Ljava/lang/Thread;

    new-instance v12, Lcom/android/server/am/AppErrorDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/server/am/AppErrorDialog$1;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    const-string/jumbo v13, "dumpstate"

    invoke-direct {v11, v12, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    .line 95
    .end local v3    # "dumpCmd":Ljava/lang/String;
    :cond_1
    :goto_2
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/am/AppErrorDialog;->setCancelable(Z)V

    .line 97
    const/4 v11, -0x1

    const v12, 0x1040375

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 101
    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v11, :cond_3

    .line 103
    const/4 v10, 0x0

    .line 104
    .local v10, "rp":Landroid/app/enterprise/RestrictionPolicy;
    const-string/jumbo v11, "enterprise_policy"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 106
    .local v4, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v4, :cond_2

    .line 107
    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v10

    .line 110
    :cond_2
    if-eqz v10, :cond_3

    move-object/from16 v0, p4

    iget v11, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v10, v11}, Landroid/app/enterprise/RestrictionPolicy;->isGoogleCrashReportAllowedAsUser(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 111
    const/4 v11, -0x2

    const v12, 0x1040376

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 122
    .end local v4    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v10    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_3
    const v11, 0x104036d

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/am/AppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 124
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Application Error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v11, v11, 0x110

    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 128
    move-object/from16 v0, p4

    iget-boolean v11, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v11, :cond_4

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x7da

    invoke-virtual {v11, v12}, Landroid/view/Window;->setType(I)V

    .line 133
    :cond_4
    const-string v11, "com.samsung.android.service.aircommand"

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 134
    .local v5, "isAirCommandService":Z
    if-eqz v5, :cond_5

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x7da

    invoke-virtual {v11, v12}, Landroid/view/Window;->setType(I)V

    .line 139
    :cond_5
    const-string v11, "com.samsung.android.app.cocktailbarservice"

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 140
    .local v6, "isCocktailBarService":Z
    if-eqz v6, :cond_b

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x7da

    invoke-virtual {v11, v12}, Landroid/view/Window;->setType(I)V

    .line 151
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    const-wide/32 v14, 0x493e0

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 154
    return-void

    .line 71
    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "isAirCommandService":Z
    .end local v6    # "isCocktailBarService":Z
    :cond_7
    const-string v11, ""

    goto/16 :goto_0

    .line 75
    .end local v8    # "name":Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 76
    .restart local v8    # "name":Ljava/lang/CharSequence;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x104036f

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v9, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-boolean v11, Lcom/android/server/am/ActivityManagerService;->mIsSPDError:Z

    if-eqz v11, :cond_9

    const-string v11, " [01]"

    :goto_4
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/am/AppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_9
    const-string v11, ""

    goto :goto_4

    .line 91
    .restart local v3    # "dumpCmd":Ljava/lang/String;
    :cond_a
    const-string v11, "-k -t -z -d -o /data/log/dumpstate_app_error"

    invoke-static {v11}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 143
    .end local v3    # "dumpCmd":Ljava/lang/String;
    .restart local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v5    # "isAirCommandService":Z
    .restart local v6    # "isCocktailBarService":Z
    :cond_b
    const-string v11, "com.samsung.android.service.peoplestripe"

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 144
    .local v7, "isPeopleStripeService":Z
    if-eqz v7, :cond_6

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x7da

    invoke-virtual {v11, v12}, Landroid/view/Window;->setType(I)V

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    iget-boolean v0, v0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 180
    :cond_0
    invoke-super {p0}, Lcom/android/server/am/BaseErrorDialog;->dismiss()V

    .line 181
    return-void
.end method

.method getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
