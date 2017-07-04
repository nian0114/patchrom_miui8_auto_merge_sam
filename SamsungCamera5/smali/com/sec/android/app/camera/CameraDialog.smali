.class public Lcom/sec/android/app/camera/CameraDialog;
.super Landroid/app/DialogFragment;
.source "CameraDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;,
        Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;,
        Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;,
        Lcom/sec/android/app/camera/CameraDialog$CustomDialog;
    }
.end annotation


# static fields
.field private static final KEY_BURST_SHOT_STORAGE_TEXT_DIALOG_ENABLED:Ljava/lang/String; = "pref_global_burst_shot_storage_text_dialog_enabled"

.field private static final KEY_CHANGE_STORAGE_SETTING_DIALOG_ENABLED:Ljava/lang/String; = "pref_global_change_storage_setting_dialog_enabled"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "msg"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final TAG:Ljava/lang/String; = "CameraDialog"

.field private static mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;


# instance fields
.field private mSeparatedShootingModeMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 976
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/CameraDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraDialog;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraDialog;->mSeparatedShootingModeMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/CameraDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraDialog;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraDialog;->showCameraDialog(I)V

    return-void
.end method

.method static synthetic access$400()Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/sec/android/app/camera/CameraDialog;->mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/CameraDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraDialog;->setChangeStorageSettingDialogEnabled(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/CameraDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraDialog;->setBurstShotsStorageDialogEnabled(Z)V

    return-void
.end method

.method private isBurstShotsStorageDialogEnabled()Z
    .locals 3

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_burst_shot_storage_text_dialog_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isChangeStorageSettingDialogEnabled()Z
    .locals 3

    .prologue
    .line 788
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_change_storage_setting_dialog_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static newInstance(I)Lcom/sec/android/app/camera/CameraDialog;
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 80
    new-instance v1, Lcom/sec/android/app/camera/CameraDialog;

    invoke-direct {v1}, Lcom/sec/android/app/camera/CameraDialog;-><init>()V

    .line 81
    .local v1, "fragment":Lcom/sec/android/app/camera/CameraDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraDialog;->setArguments(Landroid/os/Bundle;)V

    .line 84
    return-object v1
.end method

.method public static newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/camera/CameraDialog;
    .locals 3
    .param p0, "id"    # I
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v1, Lcom/sec/android/app/camera/CameraDialog;

    invoke-direct {v1}, Lcom/sec/android/app/camera/CameraDialog;-><init>()V

    .line 89
    .local v1, "fragment":Lcom/sec/android/app/camera/CameraDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v2, "msg"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraDialog;->setArguments(Landroid/os/Bundle;)V

    .line 94
    return-object v1
.end method

.method public static resetChangeStorageSettingDialogEnabled(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const-string v0, "pref_global_change_storage_setting_dialog_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 102
    return-void
.end method

.method private setBurstShotsStorageDialogEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_burst_shot_storage_text_dialog_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 782
    const-string v0, "CameraDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBurstShotsStorageDialogEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_burst_shot_storage_text_dialog_enabled"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 785
    :cond_0
    return-void
.end method

.method public static setCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    .prologue
    .line 105
    sput-object p0, Lcom/sec/android/app/camera/CameraDialog;->mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    .line 106
    return-void
.end method

.method private setChangeStorageSettingDialogEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_change_storage_setting_dialog_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 796
    const-string v0, "CameraDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChangeStorageSettingDialogEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_change_storage_setting_dialog_enabled"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 799
    :cond_0
    return-void
.end method

.method private showCameraDialog(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 807
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 808
    .local v2, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/app/DialogFragment;

    .line 809
    .local v1, "fragment":Landroid/app/DialogFragment;
    if-eqz v1, :cond_0

    .line 810
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    .line 812
    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/CameraDialog;->newInstance(I)Lcom/sec/android/app/camera/CameraDialog;

    move-result-object v0

    .line 813
    .local v0, "dialog":Landroid/app/DialogFragment;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 814
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 815
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 115
    .local v0, "id":I
    sget-object v1, Lcom/sec/android/app/camera/CameraDialog;->mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    if-eqz v1, :cond_0

    .line 116
    sget-object v1, Lcom/sec/android/app/camera/CameraDialog;->mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;->onCancelDialog(I)V

    .line 119
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissAllowingStateLoss()V

    .line 128
    return-void

    .line 122
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1e0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "id"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 136
    .local v8, "id":I
    new-instance v4, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;-><init>(Lcom/sec/android/app/camera/CameraDialog;Landroid/content/Context;)V

    .line 137
    .local v4, "builder":Lcom/sec/android/app/camera/CameraDialog$CustomDialog;
    invoke-virtual {v4, v8}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setKeyId(I)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 139
    .local v9, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "title"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 140
    .local v16, "title":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "msg"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 141
    .local v13, "message":Ljava/lang/String;
    const-string v17, "CameraDialog"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onCreateDialog id = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " msg = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sparse-switch v8, :sswitch_data_0

    .line 694
    :goto_0
    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->create()Landroid/app/AlertDialog;

    move-result-object v17

    :goto_1
    return-object v17

    .line 144
    :sswitch_0
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {v4, v13}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 146
    const v17, 0x104000a

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 149
    :sswitch_1
    const v17, 0x7f080166

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 150
    const v17, 0x7f0802e1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x104000a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 152
    const/high16 v17, 0x1040000

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 155
    :sswitch_2
    const v17, 0x7f080165

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 156
    const v17, 0x7f0802e0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x104000a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 160
    :sswitch_3
    sget-boolean v17, Lcom/sec/android/app/camera/feature/Feature;->MICRO_SD_SLOT:Z

    if-eqz v17, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isStorageMounted()Z

    move-result v17

    if-nez v17, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/Camera;->isSecureImageCaptureIntent()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/camera/util/Util;->isSmartManagerExisted(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 162
    :cond_1
    const v17, 0x7f080210

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 163
    const v17, 0x7f080160

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/Camera;->getMemoryStatus()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v17

    if-nez v17, :cond_7

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isStorageMounted()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/Camera;->isExternalMemoryAvailable()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 168
    const-string v17, "CameraDialog"

    const-string v18, "change_to_card_memory"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v6, ""

    .line 171
    .local v6, "description":Ljava/lang/String;
    sget-boolean v17, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-nez v17, :cond_6

    .line 172
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f0800a1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 176
    :goto_2
    sget-boolean v17, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_PICTURE_FORMAT:Z

    if-eqz v17, :cond_2

    .line 177
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f0800bf

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 179
    :cond_2
    sget-boolean v17, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-nez v17, :cond_3

    sget-boolean v17, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v17, :cond_4

    .line 180
    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f080070

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 183
    :cond_4
    const v17, 0x7f080111

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 184
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 185
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f080112

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 186
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 197
    .end local v6    # "description":Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-virtual {v4, v13}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 198
    const v17, 0x7f080105

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 199
    const v17, 0x7f080188

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 200
    new-instance v17, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 174
    .restart local v6    # "description":Ljava/lang/String;
    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f080072

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 188
    .end local v6    # "description":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/camera/Camera;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/camera/Camera;->checkStorageLow(I)I

    move-result v17

    if-nez v17, :cond_8

    .line 190
    const-string v17, "CameraDialog"

    const-string v18, "change_to_phone_memory"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const v17, 0x7f080114

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 193
    :cond_8
    const-string v17, "CameraDialog"

    const-string v18, "not enough space"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const v17, 0x7f080186

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 204
    :cond_9
    new-instance v10, Landroid/content/Intent;

    const-string v17, "com.samsung.android.sm.ACTION_STORAGE_DIALOG"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v10, "intent":Landroid/content/Intent;
    const-string v17, "low_space_threshold"

    const-wide/32 v18, 0x6400000

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 207
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/camera/Camera;

    const/16 v18, 0x7e7

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/sec/android/app/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 208
    :catch_0
    move-exception v7

    .line 209
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 214
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    .end local v10    # "intent":Landroid/content/Intent;
    :sswitch_4
    const v17, 0x7f080108

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 215
    const v17, 0x7f080109

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 216
    const v17, 0x7f080134

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 217
    new-instance v17, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 220
    :sswitch_5
    const v17, 0x7f080107

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 221
    const v17, 0x7f080109

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 222
    const v17, 0x7f080134

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 223
    new-instance v17, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 226
    :sswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->isChangeStorageSettingDialogEnabled()Z

    move-result v17

    if-nez v17, :cond_a

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissAllowingStateLoss()V

    .line 228
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 230
    :cond_a
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0801da

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0801db

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v17

    if-nez v17, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v17

    if-nez v17, :cond_b

    .line 232
    sget-boolean v17, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-nez v17, :cond_c

    .line 233
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0801d9

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 238
    :cond_b
    :goto_4
    const v17, 0x7f0801dc

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 239
    const v17, 0x104000a

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 240
    const/high16 v17, 0x1040000

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 235
    :cond_c
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0802e9

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    .line 243
    :sswitch_7
    const-string v17, "CameraDialog"

    const-string v18, "FLIP_OPEN_DLG"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 245
    const v17, 0x7f080210

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v17

    if-nez v17, :cond_d

    const v17, 0x7f0801c8

    :goto_5
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 247
    const v17, 0x104000a

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 248
    new-instance v17, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 246
    :cond_d
    const v17, 0x7f0801c6

    goto :goto_5

    .line 250
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissAllowingStateLoss()V

    .line 251
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 260
    :sswitch_8
    const v17, 0x7f040007

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 261
    .local v11, "layout":Landroid/view/View;
    const v17, 0x7f0e0001

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 262
    .local v15, "textView":Landroid/widget/TextView;
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 263
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 265
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 266
    const v17, 0x104000a

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 270
    .end local v11    # "layout":Landroid/view/View;
    .end local v15    # "textView":Landroid/widget/TextView;
    :sswitch_9
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 271
    invoke-virtual {v4, v13}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 272
    const v17, 0x104000a

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 275
    :sswitch_a
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 276
    invoke-virtual {v4, v13}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 277
    const v17, 0x104000a

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 278
    const/high16 v17, 0x1040000

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 281
    :sswitch_b
    const v17, 0x7f0800b1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 282
    const v17, 0x7f08017a

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 283
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 284
    const v17, 0x104000a

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 288
    :sswitch_c
    const v17, 0x7f0800b1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 289
    const v17, 0x7f08017b

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 290
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 291
    const v17, 0x104000a

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 295
    :sswitch_d
    const v17, 0x7f0800b1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 297
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f08017a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f0800e5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 301
    :goto_6
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 302
    const v17, 0x104000a

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 299
    :cond_f
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f08017a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f0800e4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_6

    .line 306
    :sswitch_e
    const v17, 0x7f0800b1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 308
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f08017b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f0800e5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 312
    :goto_7
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 313
    const v17, 0x104000a

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 310
    :cond_10
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f08017b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f0800e4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_7

    .line 317
    :sswitch_f
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 318
    invoke-virtual {v4, v13}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 319
    const v17, 0x7f080134

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 320
    new-instance v17, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 323
    :sswitch_10
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 324
    invoke-virtual {v4, v13}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 325
    const v17, 0x7f080134

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 326
    new-instance v17, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 329
    :sswitch_11
    const v17, 0x7f080210

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 330
    const v17, 0x7f0800f6

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 331
    const v17, 0x7f080134

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 332
    new-instance v17, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 335
    :sswitch_12
    const v17, 0x7f0800c1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 336
    const v17, 0x7f08019c

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 338
    const v17, 0x7f080188

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$1;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 347
    :sswitch_13
    const v17, 0x7f0800dd

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 348
    const v17, 0x7f0800e6

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 349
    const v17, 0x104000a

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 353
    :sswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v17

    if-nez v17, :cond_11

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 354
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissAllowingStateLoss()V

    .line 355
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 357
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissAllowingStateLoss()V

    .line 359
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 361
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/camera/util/Util;->isSamsungTalkBackEnabled(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 362
    const v17, 0x7f080201

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 366
    :goto_8
    const v17, 0x7f080145

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 367
    const/high16 v17, 0x1040000

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 364
    :cond_14
    const v17, 0x7f0801de

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_8

    .line 371
    :sswitch_15
    const v17, 0x7f0800e0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/camera/util/Util;->isSamsungTalkBackEnabled(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 373
    const v17, 0x7f080203

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 377
    :goto_9
    const v17, 0x104000a

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 378
    const/high16 v17, 0x1040000

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 375
    :cond_15
    const v17, 0x7f0801e0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_9

    .line 382
    :sswitch_16
    const v17, 0x7f080067

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 383
    const v17, 0x7f0800f3

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 384
    const v17, 0x104000a

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 388
    :sswitch_17
    const v17, 0x7f0801af

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 389
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 390
    const v17, 0x7f0801ae

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 391
    const/high16 v17, 0x1040000

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 395
    :sswitch_18
    const/high16 v17, 0x7f040000

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 396
    .restart local v11    # "layout":Landroid/view/View;
    const v17, 0x7f0e0001

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 397
    .restart local v15    # "textView":Landroid/widget/TextView;
    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 398
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 399
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 400
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    const v17, 0x104000a

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 405
    .end local v11    # "layout":Landroid/view/View;
    .end local v15    # "textView":Landroid/widget/TextView;
    :sswitch_19
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->isBurstShotsStorageDialogEnabled()Z

    move-result v17

    if-nez v17, :cond_16

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissAllowingStateLoss()V

    .line 407
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 409
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v17

    if-nez v17, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/Camera;->isVideoCaptureIntent()Z

    move-result v17

    if-nez v17, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/camera/Camera;

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/camera/util/Util;->isEasyCameraSettingOn(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 411
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissAllowingStateLoss()V

    .line 412
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 414
    :cond_18
    const v17, 0x7f040006

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 415
    .restart local v11    # "layout":Landroid/view/View;
    const v17, 0x7f0e0001

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 416
    .restart local v15    # "textView":Landroid/widget/TextView;
    const v17, 0x7f0e000d

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 418
    .local v5, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 419
    const v17, 0x7f0800d6

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 420
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 421
    const v17, 0x7f080110

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 422
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 424
    new-instance v17, Lcom/sec/android/app/camera/CameraDialog$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$2;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 431
    const v17, 0x104000a

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 432
    const/high16 v17, 0x1040000

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 436
    .end local v5    # "checkBox":Landroid/widget/CheckBox;
    .end local v11    # "layout":Landroid/view/View;
    .end local v15    # "textView":Landroid/widget/TextView;
    :sswitch_1a
    const v17, 0x7f04000a

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 437
    .restart local v11    # "layout":Landroid/view/View;
    const v17, 0x7f0e0001

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 438
    .restart local v15    # "textView":Landroid/widget/TextView;
    const/4 v14, 0x0

    .line 439
    .local v14, "msgText":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/Camera;->isProviderEnabled()Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 441
    const v17, 0x7f08016a

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0802de

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 452
    :goto_a
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isChinaFeature()Z

    move-result v17

    if-eqz v17, :cond_19

    .line 453
    const-string v17, "Wi-Fi"

    const-string v18, "WLAN"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 455
    :cond_19
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f08016d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    const v17, 0x7f0e0012

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 458
    .local v12, "learnMore":Landroid/widget/TextView;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 459
    new-instance v17, Lcom/sec/android/app/camera/CameraDialog$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$3;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    new-instance v17, Lcom/sec/android/app/camera/CameraDialog$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$4;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 476
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "<u>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f080153

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "</u>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 479
    const v17, 0x7f0800b1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 480
    const v17, 0x7f080145

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 481
    const/high16 v17, 0x1040000

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 443
    .end local v12    # "learnMore":Landroid/widget/TextView;
    :cond_1a
    const v17, 0x7f08016a

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f080154

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_a

    .line 446
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 447
    const v17, 0x7f08016c

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0802de

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_a

    .line 449
    :cond_1c
    const v17, 0x7f08016c

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f080154

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_a

    .line 485
    .end local v11    # "layout":Landroid/view/View;
    .end local v14    # "msgText":Ljava/lang/String;
    .end local v15    # "textView":Landroid/widget/TextView;
    :sswitch_1b
    const v17, 0x7f04000a

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 486
    .restart local v11    # "layout":Landroid/view/View;
    const v17, 0x7f0e0001

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 487
    .restart local v15    # "textView":Landroid/widget/TextView;
    const/4 v14, 0x0

    .line 488
    .restart local v14    # "msgText":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/Camera;->isProviderEnabled()Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 490
    const v17, 0x7f08016a

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0802de

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 501
    :goto_b
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isChinaFeature()Z

    move-result v17

    if-eqz v17, :cond_1d

    .line 502
    const-string v17, "Wi-Fi"

    const-string v18, "WLAN"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 504
    :cond_1d
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f08016b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    const v17, 0x7f0e0012

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 507
    .restart local v12    # "learnMore":Landroid/widget/TextView;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 508
    new-instance v17, Lcom/sec/android/app/camera/CameraDialog$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$5;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    new-instance v17, Lcom/sec/android/app/camera/CameraDialog$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$6;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 525
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "<u>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f080153

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "</u>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 528
    const v17, 0x7f0800b1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 529
    const v17, 0x7f080145

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 530
    const/high16 v17, 0x1040000

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 492
    .end local v12    # "learnMore":Landroid/widget/TextView;
    :cond_1e
    const v17, 0x7f08016a

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f080154

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_b

    .line 495
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_20

    .line 496
    const v17, 0x7f08016c

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0802de

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_b

    .line 498
    :cond_20
    const v17, 0x7f08016c

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f080154

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_b

    .line 534
    .end local v11    # "layout":Landroid/view/View;
    .end local v14    # "msgText":Ljava/lang/String;
    .end local v15    # "textView":Landroid/widget/TextView;
    :sswitch_1c
    const v17, 0x7f04000a

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 535
    .restart local v11    # "layout":Landroid/view/View;
    const v17, 0x7f0e0001

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 536
    .restart local v15    # "textView":Landroid/widget/TextView;
    const/4 v14, 0x0

    .line 537
    .restart local v14    # "msgText":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isProviderEnabled()Z

    move-result v17

    if-eqz v17, :cond_23

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 539
    const v17, 0x7f08016a

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0802de

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 550
    :goto_c
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isChinaFeature()Z

    move-result v17

    if-eqz v17, :cond_21

    .line 551
    const-string v17, "Wi-Fi"

    const-string v18, "WLAN"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 553
    :cond_21
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f08016b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    const v17, 0x7f0e0012

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 556
    .restart local v12    # "learnMore":Landroid/widget/TextView;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 557
    new-instance v17, Lcom/sec/android/app/camera/CameraDialog$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$7;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    new-instance v17, Lcom/sec/android/app/camera/CameraDialog$8;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$8;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 574
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "<u>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f080153

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "</u>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 577
    const v17, 0x7f0800b1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 578
    const v17, 0x7f080145

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 579
    const/high16 v17, 0x1040000

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 541
    .end local v12    # "learnMore":Landroid/widget/TextView;
    :cond_22
    const v17, 0x7f08016a

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f080154

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_c

    .line 544
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_24

    .line 545
    const v17, 0x7f08016c

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0802de

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_c

    .line 547
    :cond_24
    const v17, 0x7f08016c

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f080154

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_c

    .line 583
    .end local v11    # "layout":Landroid/view/View;
    .end local v14    # "msgText":Ljava/lang/String;
    .end local v15    # "textView":Landroid/widget/TextView;
    :sswitch_1d
    const v17, 0x7f04000a

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 584
    .restart local v11    # "layout":Landroid/view/View;
    const v17, 0x7f0e0001

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 585
    .restart local v15    # "textView":Landroid/widget/TextView;
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    const v17, 0x7f0e0012

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 587
    .restart local v12    # "learnMore":Landroid/widget/TextView;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 588
    new-instance v17, Lcom/sec/android/app/camera/CameraDialog$9;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$9;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    new-instance v17, Lcom/sec/android/app/camera/CameraDialog$10;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$10;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 605
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "<u>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f080153

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "</u>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 608
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 609
    const v17, 0x104000a

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 610
    const/high16 v17, 0x1040000

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 614
    .end local v11    # "layout":Landroid/view/View;
    .end local v12    # "learnMore":Landroid/widget/TextView;
    .end local v15    # "textView":Landroid/widget/TextView;
    :sswitch_1e
    const v17, 0x7f0800c1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 615
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isUSAFeature()Z

    move-result v17

    if-eqz v17, :cond_25

    .line 616
    const v17, 0x7f08019f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 620
    :goto_d
    const v17, 0x7f08019d

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 621
    const v17, 0x7f08013f

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 618
    :cond_25
    const v17, 0x7f08019e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_d

    .line 625
    :sswitch_1f
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/camera/CameraDialog;->mSeparatedShootingModeMessage:Ljava/lang/String;

    .line 626
    const v17, 0x7f0801fa

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 627
    const v17, 0x7f0801c2

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v16, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 628
    const v17, 0x104000a

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 629
    const/high16 v17, 0x1040000

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 633
    :sswitch_20
    const v17, 0x7f0801fa

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 634
    const v17, 0x7f0801bf

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 635
    const v17, 0x104000a

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 636
    const/high16 v17, 0x1040000

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 640
    :sswitch_21
    const v17, 0x7f0801fa

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 641
    const v17, 0x7f0801c0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 642
    const v17, 0x104000a

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 643
    const/high16 v17, 0x1040000

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 647
    :sswitch_22
    const v17, 0x7f080101

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 648
    const v17, 0x7f080109

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f080134

    new-instance v19, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 649
    new-instance v17, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 653
    :sswitch_23
    const v17, 0x7f080119

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 654
    const v17, 0x7f080118

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 655
    const v17, 0x7f0801bc

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 659
    :sswitch_24
    const v17, 0x7f08011b

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 660
    const v17, 0x7f08011a

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 661
    const v17, 0x7f080115

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 665
    :sswitch_25
    const v17, 0x7f080116

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 666
    const v17, 0x7f080105

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 667
    const v17, 0x7f080118

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 671
    :sswitch_26
    const v17, 0x7f0800f1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 672
    invoke-virtual {v4, v13}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 673
    const v17, 0x104000a

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 677
    :sswitch_27
    invoke-virtual {v4, v13}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 678
    const v17, 0x7f0801ce

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 679
    const v17, 0x7f080105

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 683
    :sswitch_28
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 684
    invoke-virtual {v4, v13}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 685
    const v17, 0x104000a

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 689
    :sswitch_29
    invoke-virtual {v4, v13}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 690
    const v17, 0x104000a

    new-instance v18, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 142
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_2
        0x190 -> :sswitch_9
        0x191 -> :sswitch_3
        0x192 -> :sswitch_4
        0x193 -> :sswitch_5
        0x194 -> :sswitch_6
        0x195 -> :sswitch_7
        0x197 -> :sswitch_17
        0x199 -> :sswitch_a
        0x19c -> :sswitch_1d
        0x19d -> :sswitch_1a
        0x19e -> :sswitch_1b
        0x19f -> :sswitch_1c
        0x1a0 -> :sswitch_b
        0x1a1 -> :sswitch_d
        0x1a2 -> :sswitch_c
        0x1a3 -> :sswitch_e
        0x1a4 -> :sswitch_f
        0x1a5 -> :sswitch_10
        0x1a6 -> :sswitch_11
        0x1ae -> :sswitch_13
        0x1c3 -> :sswitch_8
        0x1c4 -> :sswitch_8
        0x1c5 -> :sswitch_8
        0x1c6 -> :sswitch_8
        0x1c7 -> :sswitch_8
        0x1c8 -> :sswitch_8
        0x1d1 -> :sswitch_14
        0x1d2 -> :sswitch_15
        0x1d3 -> :sswitch_16
        0x1d4 -> :sswitch_18
        0x1d6 -> :sswitch_19
        0x1d7 -> :sswitch_1e
        0x1d9 -> :sswitch_1f
        0x1da -> :sswitch_20
        0x1db -> :sswitch_21
        0x1dc -> :sswitch_22
        0x1dd -> :sswitch_23
        0x1de -> :sswitch_24
        0x1df -> :sswitch_25
        0x1e0 -> :sswitch_27
        0x1e1 -> :sswitch_26
        0x1e2 -> :sswitch_12
        0x1e3 -> :sswitch_28
        0x1e4 -> :sswitch_29
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 702
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 703
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 732
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    return-object v3

    .line 709
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 711
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 720
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 721
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 722
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 723
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 724
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 725
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 703
    nop

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x1a4 -> :sswitch_0
        0x1a6 -> :sswitch_0
        0x1c3 -> :sswitch_1
        0x1c4 -> :sswitch_1
        0x1c5 -> :sswitch_1
        0x1c6 -> :sswitch_1
        0x1c7 -> :sswitch_1
        0x1c8 -> :sswitch_1
        0x1d9 -> :sswitch_0
        0x1e2 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 755
    .local v1, "id":I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 756
    .local v0, "cameraContext":Landroid/app/Activity;
    sparse-switch v1, :sswitch_data_0

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 763
    :sswitch_0
    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 768
    :sswitch_1
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->MICRO_SD_SLOT:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 756
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x192 -> :sswitch_0
        0x193 -> :sswitch_0
        0x1a4 -> :sswitch_0
        0x1a6 -> :sswitch_0
        0x1dc -> :sswitch_0
    .end sparse-switch
.end method
